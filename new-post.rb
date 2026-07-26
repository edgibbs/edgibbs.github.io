require "date"
require "fileutils"

PostExists = Class.new(StandardError)
SlugMismatch = Class.new(StandardError)

class PostGenerator
  DEFAULT_CATEGORY = "software development".freeze

  def initialize(title, date: Date.today, categories: [DEFAULT_CATEGORY], root: ".")
    @title = title
    @date = date
    @categories = categories
    @root = root
  end

  def slug
    @title.downcase
          .then { strip_punctuation(_1) }
          .then { hyphenate(_1) }
  end

  def filename
    "_posts/#{@date.strftime("%Y-%m-%d")}-#{slug}.md"
  end

  def permalink
    "/#{@date.strftime("%Y/%m/%d")}/#{slug}/"
  end

  def write
    path = File.join(@root, filename)
    raise PostExists, "#{filename} already exists" if File.exist?(path)

    FileUtils.mkdir_p(File.dirname(path))
    File.write(path, front_matter)
    path
  end

  def front_matter
    <<~YAML
      ---
      title: "#{@title}"
      permalink: #{permalink}
      layout: post
      categories:
      #{category_list}
      ---
    YAML
  end

  private

  def category_list
    @categories.map { "  - #{_1}" }.join("\n")
  end

  def strip_punctuation(text)
    text.gsub(/[^a-z0-9\s_-]/, "")
  end

  def hyphenate(text)
    text.strip.gsub(/[\s-]+/, "-")
  end
end

class PostRedater
  def initialize(path, date: Date.today)
    @path = path
    @date = date
  end

  def redate
    verify_slugs_agree
    raise PostExists, "#{File.basename(moved_path)} already exists" if collision?

    redated = File.read(@path).sub(/^permalink:.*$/, "permalink: #{permalink}")
    File.rename(@path, moved_path) unless moved_path == @path
    File.write(moved_path, redated)
    moved_path
  end

  def permalink
    "/#{@date.strftime("%Y/%m/%d")}/#{slug}/"
  end

  private

  # A published post's URL comes from its permalink, not its filename. If the two
  # disagree, redating would silently move the live URL, so refuse and let a human
  # decide which one is real.
  def verify_slugs_agree
    return if permalink_slug.nil? || permalink_slug == slug

    raise SlugMismatch, "filename says '#{slug}' but permalink says " \
                        "'#{permalink_slug}' — fix one before redating"
  end

  def permalink_slug
    File.read(@path)[%r{^permalink:\s*/\d{4}/\d{2}/\d{2}/([^/\s]+)}, 1]
  end

  def collision?
    moved_path != @path && File.exist?(moved_path)
  end

  def moved_path
    File.join(File.dirname(@path), "#{@date.strftime("%Y-%m-%d")}-#{slug}.md")
  end

  def slug
    File.basename(@path, ".md").sub(/\A\d{4}-\d{2}-\d{2}-/, "")
  end
end

if __FILE__ == $PROGRAM_NAME
  USAGE = <<~TEXT.freeze
    usage:
      ruby new-post.rb "My Post Title"                       create a new post, dated today
      ruby new-post.rb --redate _posts/2026-07-20-slug.md    move a post to today's date
  TEXT

  begin
    case ARGV[0]
    when nil, "-h", "--help"
      abort(USAGE)
    when "--redate"
      abort(USAGE) if ARGV[1].nil?
      abort("no such post: #{ARGV[1]}") unless File.exist?(ARGV[1])

      puts "redated to #{PostRedater.new(ARGV[1]).redate}"
    else
      puts "created #{PostGenerator.new(ARGV[0]).write}"
    end
  rescue PostExists, SlugMismatch => e
    abort("refusing: #{e.message}")
  end
end

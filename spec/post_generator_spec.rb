require "fileutils"
require "tmpdir"

require_relative "../new-post"

RSpec.describe PostGenerator do
  describe "#slug" do
    it "lowercases the title and hyphenates the spaces" do
      expect(PostGenerator.new("My Title").slug).to eq("my-title")
    end

    it "drops apostrophes instead of hyphenating them" do
      expect(PostGenerator.new("Ruby's Best Feature").slug).to eq("rubys-best-feature")
    end

    it "drops other punctuation but keeps existing hyphens" do
      expect(PostGenerator.new("Rails 8: What's New? (A Deep-Dive!)").slug)
        .to eq("rails-8-whats-new-a-deep-dive")
    end

    it "keeps underscores so Ruby method names survive" do
      expect(PostGenerator.new("RSpec stub_chain for Legacy Code").slug)
        .to eq("rspec-stub_chain-for-legacy-code")
    end
  end

  describe "#filename" do
    it "prefixes the slug with the post date" do
      generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26))

      expect(generator.filename).to eq("_posts/2026-07-26-my-title.md")
    end

    it "defaults to today when no date is given" do
      allow(Date).to receive(:today).and_return(Date.new(2026, 1, 15))

      expect(PostGenerator.new("My Title").filename).to eq("_posts/2026-01-15-my-title.md")
    end
  end

  describe "#permalink" do
    it "matches the WordPress-era URL shape, trailing slash included" do
      generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26))

      expect(generator.permalink).to eq("/2026/07/26/my-title/")
    end
  end

  describe "#front_matter" do
    it "writes the four keys every existing post has, in order" do
      generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26))

      expect(generator.front_matter).to eq(<<~YAML)
        ---
        title: "My Title"
        permalink: /2026/07/26/my-title/
        layout: post
        categories:
          - software development
        ---
      YAML
    end
  end

  describe "#write" do
    it "creates the post file containing the front matter" do
      Dir.mktmpdir do |root|
        generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26), root: root)

        path = generator.write

        expect(path).to eq(File.join(root, "_posts/2026-07-26-my-title.md"))
        expect(File.read(path)).to eq(generator.front_matter)
      end
    end

    it "refuses to overwrite a post that already exists" do
      Dir.mktmpdir do |root|
        generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26), root: root)
        generator.write

        expect { generator.write }
          .to raise_error(PostExists, /2026-07-26-my-title\.md/)
      end
    end

    it "leaves the existing post untouched when it refuses" do
      Dir.mktmpdir do |root|
        generator = PostGenerator.new("My Title", date: Date.new(2026, 7, 26), root: root)
        path = generator.write
        File.write(path, "a post I already wrote")

        expect { generator.write }.to raise_error(PostExists)
        expect(File.read(path)).to eq("a post I already wrote")
      end
    end
  end
end

RSpec.describe PostRedater do
  def write_post(root, filename, permalink)
    path = File.join(root, "_posts", filename)
    FileUtils.mkdir_p(File.dirname(path))
    File.write(path, <<~MD)
      ---
      title: "My Title"
      permalink: #{permalink}
      layout: post
      categories:
        - software development
      ---

      The body I already wrote.
    MD
    path
  end

  describe "#redate" do
    it "renames the post file to the new date, keeping the slug" do
      Dir.mktmpdir do |root|
        original = write_post(root, "2026-07-20-my-title.md", "/2026/07/20/my-title/")

        moved = PostRedater.new(original, date: Date.new(2026, 7, 26)).redate

        expect(moved).to eq(File.join(root, "_posts", "2026-07-26-my-title.md"))
        expect(File.exist?(original)).to be(false)
      end
    end

    it "rewrites the permalink so it agrees with the new filename" do
      Dir.mktmpdir do |root|
        original = write_post(root, "2026-07-20-my-title.md", "/2026/07/20/my-title/")

        moved = PostRedater.new(original, date: Date.new(2026, 7, 26)).redate

        expect(File.read(moved)).to include("permalink: /2026/07/26/my-title/")
        expect(File.read(moved)).not_to include("2026/07/20")
      end
    end

    it "leaves the title, categories, and body alone" do
      Dir.mktmpdir do |root|
        original = write_post(root, "2026-07-20-my-title.md", "/2026/07/20/my-title/")

        moved = PostRedater.new(original, date: Date.new(2026, 7, 26)).redate

        expect(File.read(moved)).to include('title: "My Title"')
        expect(File.read(moved)).to include("  - software development")
        expect(File.read(moved)).to include("The body I already wrote.")
      end
    end

    it "refuses when a post already sits at the new date" do
      Dir.mktmpdir do |root|
        original = write_post(root, "2026-07-20-my-title.md", "/2026/07/20/my-title/")
        write_post(root, "2026-07-26-my-title.md", "/2026/07/26/my-title/")

        expect { PostRedater.new(original, date: Date.new(2026, 7, 26)).redate }
          .to raise_error(PostExists, /2026-07-26-my-title\.md/)
        expect(File.exist?(original)).to be(true)
      end
    end

    it "refuses when the filename slug and permalink slug disagree" do
      Dir.mktmpdir do |root|
        original = write_post(root, "2020-09-13-with-constants.md",
                              "/2020/07/11/with-class-names/")

        expect { PostRedater.new(original, date: Date.new(2026, 7, 26)).redate }
          .to raise_error(SlugMismatch, /with-constants.*with-class-names/m)
        expect(File.exist?(original)).to be(true)
      end
    end
  end
end

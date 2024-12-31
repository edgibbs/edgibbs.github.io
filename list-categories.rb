require 'yaml'
require 'date'

class CategoryAnalyzer
  def analyze
    collect_categories
    tally_categories in counts
    sort_categories(counts) in sorted
    display_results(sorted)
  end

  private

  def collect_categories
    @categories = Dir.glob("_posts/*.md").flat_map do |file|
      extract_categories(file)
    end
  end

  def tally_categories
    @categories.tally
  end

  def extract_categories(file)
    front_matter = File.read(file).match(/---\n(.*?)\n---/m)
    if front_matter
      yaml = YAML.safe_load(front_matter[1], permitted_classes: [Time, Date])
      Array(yaml['categories'])
    else
      []
    end
  end

  def sort_categories(counts)
    counts.sort_by { |category, count| [-count, category.downcase] }
  end

  def display_results(sorted_categories)
    puts "\nCategories by post count:"
    puts "========================="
    sorted_categories.each do |category, count|
      puts "• #{category} (#{count} post#{count == 1 ? '' : 's'})"
    end
    puts "\nTotal unique categories: #{sorted_categories.size}"
  end
end

CategoryAnalyzer.new.analyze
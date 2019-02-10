class EgyptGods::Scraper
  
  attr_accessor :name, :info
  
  @@all =[]
  
  def initialize(name = nil, info = nil)
    @name =name
    @info = info
  end
  
  def self.all
    @@all
  end
  
  def self.scrape
    @doc = Nokogiri::HTML(open("http://rickriordan.com/extra/meet-the-egyptian-gods/"))
  end
  
  def self.scrape_god
      @doc.each do |ele|
        name = ele.doc.search("div.question").text.strip
        info = ele.doc.search("div.answer").text
        god = self.new(name, info)
        @@all << god
      end
    end
    
    def self.display_god
    @@all.each.with_index(1) do |god, i|
      puts "   #{i}.   #{god.name}"
    end
  end
  
  def self.display_info(input)
    index = input.to_i - 1
    puts "#{@@all[index].info}"
  end
end
class EgyptGods::Gods
  
  attr_accessor :name, :info
  
  def self.all
    scrape_gods
  end
  
  def self.scrape_gods
    
    gods = []
    gods << self.scrape_gods_site
    gods 
  end
  
  def self.scrape_gods_site
    doc = Nokogiri::HTML(open("http://rickriordan.com/extra/meet-the-egyptian-gods/"))
    
    god = self.new
    god.name = doc.search("div.question").text
    god.info = doc.search("div.answer").text
    god
  end
end
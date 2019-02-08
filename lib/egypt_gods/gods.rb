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
    doc = Nokogiri::HTML(open("https://www.ancient.eu/article/885/egyptian-gods---the-complete-list/"))
    
    god = self.new
    god.name = doc.search ("p.strong").text
    god.info = doc.search ("p. ").text
    god
  end
end
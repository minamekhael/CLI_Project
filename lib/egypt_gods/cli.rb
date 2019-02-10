class EgyptGods::CLI
  
  def call
    list_gods
    menu
    goodbye
  end
  
  def list_gods
    EgyptGods::Scraper.scrape
    EgyptGods::Scraper.scrape_god
    EgyptGods::Scraper.display_god
  end
  
  def list_series(input)
    EgyptGods::Scraper.scrape
    EgyptGods::Scraper.scrape_info
    EgyptGods::Scraper.display_info
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the god you want more information on, type list to see list, or exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @gods[input.to_i-1]
      elsif input == "list"
        list_gods
      else
        puts "Invalid response."
      end
    end
  end

  def goodbye
    puts "Hope you learned something"
  end
end
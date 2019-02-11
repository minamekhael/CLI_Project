class EgyptGods::CLI
  
  def call
    EgyptGods::Scraper.scrape_gods
    display_gods
    menu
    goodbye
  end
  
 def display_gods
    God.all.each.with_index(1) do |god, i|
      puts "   #{i}.   #{god.name}"
    end
  end
  
  def display_info(input)
    index = input.to_i - 1
    puts "#{God.all[index].info}"
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
      elsif input != "exit"
        puts "Invalid response."
      end
    end
  end

  def goodbye
    puts "Hope you learned something"
  end
end
class EgyptGods::CLI
  
  def call
    puts "hello world"
    list_gods
    menu
    goodbye
  end
  
  def list_gods
    @gods = EgyptGods::Gods.all
    @gods.each_with_index(1) do |god, i|
      puts "#{i}. #{god.name}"
    end
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
    puts "see you next time"
  end
end
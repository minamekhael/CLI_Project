class EgyptGods::CLI
  
  def call
    puts "hello world"
    list_gods
    menu
    goodbye
  end
  
  def list_gods
    puts <<-DOC
    1.
    2.
    3.
    4.
    5.
    6.
    Exit
    DOC
  end
  
  def menu
    input = nil
    puts "Enter the number of the god you want more information on, type list to see list, or exit to leave:"
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      puts "more info on god 1.."
    when "2"
      puts "more info on god 2.."
    when "list"
      list_gods
    else
      puts "Invalid response"
    end
  end
end

  def goodbye
    puts "see you next time"
  end
end
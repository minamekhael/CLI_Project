class EgyptGods::CLI
  
  def call
    EgyptGods::Scraper.scrape_gods
    welcome
    display_gods
    menu
    goodbye
  end
  
  def welcome
		puts ""
		puts "----------------------------------------"
		puts "            EGYPTIAN GODS               "
		puts "----------------------------------------"
  end
  
 def display_gods
    God.all.each.with_index(1) do |god, i|
      puts "#{i}.   #{god.name}"
    end
  end
  
  def display_info
    God.all.each.with_index(1) do |god, i|
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the god you want more information on, type list to see list, or exit:"
      input = gets.strip.downcase
      
     if input.to_i > 0 && input.to_i < 18
        the_god = display_info[input.to_i-1]
        puts "#{the_god.name} - #{the_god.info}"
      elsif input == "list"
        display_gods
      elsif input != "exit"
        puts "Invalid response."
      end
    end
  end

  def goodbye
puts <<-'EOF'
  

               _
               __ -
           /     __   \
             /   _ -    |
         | '  | (_)  |                        _L/L
            |  __  /   /                    _LT/l_L_
           \ \  __  /                     _LLl/L_T_lL_
               -      _T/L              _LT|L/_|__L_|_L_
                    _Ll/l_L_          _TL|_T/_L_|__T__|_l_
                  _TLl/T_l|_L_      _LL|_Tl/_|__l___L__L_|L_
                _LT_L/L_|_L_l_L_  _'|_|_|T/_L_l__T _ l__|__|L_
              _Tl_L|/_|__|_|__T _LlT_|_Ll/_l_ _|__[ ]__|__|_l_L_
   jjs_ ___ _LT_l_l/|__|__l_T _T_L|_|_|l/___|_ _|__l__|__|__|_T_l_  ___ _
           . ";;:;.;;:;.;;;;_Ll_|__|_l_/__|___l__|__|___l__L_|_l_LL_
             .  .:::.:::..:::.";;;;:;;:.;.;;;;,;;:,;;;.;:,;;,;::;:".'
                 . ,::.:::.:..:.: ::.::::;..:,:::,::::.::::.:;:.:..
                    . .:.:::.:::.:::: .::.::. :::.::::..::..:.::. . .
                      . ::.:.: :. .:::  ::::.::.:::.::...:. .:::. .
                          .:. ..   . ::.. .: ::. ::::.:: ::::::.   .
                          .  :.         .. :::.::: ::.::::. ::. .
                            . .           .:. :.. :::. ::..: :.
                nn_r   nn_r   .              :  .:::.:: ::..:  .
               /l(\   /l)\      nn_r          . ::. :. : : ..
               `'"``  ``"``    /\(\              . . .:. . : .
                               ' "``                  . :. .
                                                       .   .
                                                          .
EOF
  end
end
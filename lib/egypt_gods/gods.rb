class EgyptGods::Gods
  
  attr_accessor :name, :info
  
  def self.all
    puts <<-DOC
    1.
    2.
    Exit
    DOC
    god_1 = self.new
    god_1.name = "A'ah"
    god_1.info = "An early moon god who evolved into Iah (also known as Yah) and, eventually, Khonsu."
    
    god_2 = self.new
    god_2.name = "Aken"
    god_2.info = "Custodian of the boat which ferried souls across Lily Lake to the Field of Reeds in the afterlife. He slept until he was needed by Hraf-Hef, the surly Divine Ferryman. His name only appears in the Book of the Dead."
    
    [god_1 god_2]
  end

end
require"Page that has some methods to be used frequently"

def dialogue_2(speech_line)
  speech_line.each_char { |symbol|
    print symbol
    $stdout.flush
    sleep(0.005)
  }
  puts
  #sleep(0.5)
end

def begin_game
  dialogue_2("You wake up in a concrete room, slumped against a wall.")
  dialogue_2("Directly infront of you there is a door")
  dialogue_2("To your left there is a barred window,")
  dialogue_2("The wall to your right is a blank gray slate")
  dialogue_2("Above you is another barred window.")
  dialogue_2("What do you want to do?")
  sleep(0.7)
  
end



#two_way_dialogue("option 1: prepare to attack whomever may be on the other side of that door", "option 2: Cower in the corner")




class Weapon
  
  def initialize()
    @name = ""
    @attack_val = 0   
  end
  
  def weapon_stats(name, attack_val)
    @name = name
    @attack_val = attack_val
  end

  attr_accessor :name, :attack_val  
end



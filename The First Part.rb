require "Part 2, after character creation"
require "Page that has some methods to be used frequently"


class Character
 
  def initialize()
    @name = ""
    @health = 0
    @stamina = 0
    @base_attack = 0
    @hunger_mult = 0
    @parry_chance_mult = 0
    @exp = 0
  end
    
  
  def stats(health, stamina, base_attack, hunger_mult, parry_chance_mult, exp)
    @health = health
    @stamina = stamina
    @base_attack = base_attack 
    @hunger_mult = hunger_mult
    @parry_chance_mult = parry_chance_mult
    @exp = exp
  end
  
  def print_stats
    dialogue_2("Here are your stats.")
    dialogue_2("Your health is #{@health}")
    dialogue_2("You have #{@stamina} stamina")
    dialogue_2("Your base attack is #{@base_attack}")
    dialogue_2("Your take #{@hunger_mult}x hunger damage from actions")
    dialogue_2("You have #{@parry_chance_mult} times the chance to parry")
    dialogue_2("You start out with #{@exp} exp")
    dialogue_2("If you would like to change your stats, start a new game.")
    sleep(0.5)
  end
  
  attr_accessor :name , :base_attack, :stamina, :hunger_multiplier, :exp, :parry_chance_mult, :health #aspects of the character that will be dictated by the class picked
end


player_character = Character.new()

puts "Welcome to Prison Labyrinth"
puts "What is your name? "
player_character.name = gets.chomp.capitalize


print "Ok #{player_character.name}, "
armor_level = ""

until armor_level.include?("he") or armor_level.include?("med") or armor_level.include?("li")
  puts "Pick an armor level!"
  puts "Heavy? Medium? Light?"       #class options
  armor_level = gets.chomp.downcase 
  
  if armor_level.include?("he")                #defining the heavy armor character aspects\
    player_character.stats(180, 75, 30, 2, 0.5, 0) 
     
  elsif armor_level.include?("med")
    player_character.stats(150, 100, 50, 1, 1, 0) 

  elsif armor_level.include?("lig")
    player_character.stats(120, 125, 70, 0.5, 2, 0) 
 
  else
    puts "error, not a valid value"
  end
end

player_character.print_stats



puts
dialogue_2("Would you like to begin?")
start_game = gets.chomp.downcase

cell_action_option_1 = ""

if start_game.include?("n")
  then puts"Well then what are you still doing here?"
elsif start_game.include?("y") or start_game.include?("su")
  begin_game
  
  cell_action_option_1 = gets.chomp

  if cell_action_option_1.include?("1")
    dialogue_2("Looking out the 'Window' you see a dark candle-lit hallway made of the same stone as your cell,")
    dialogue_2("A hint of smoke pierces through the musty mildew and rot ")
  elsif cell_action_option_1.include?("2")
    dialogue_2("Through the window you see a cell identiacal to your own,")
    dialogue_2("its occupant long since dead mummified in the corner")
  end


end




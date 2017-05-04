require "Part 2, after character creation"
require "Page that has some methods to be used frequently"

two_way_dialogue("option 1: prepare to attack whomever may be on the other side of that door", "option 2: Cower in the corner")
cell_action_option_2 = gets.chomp

if cell_action_option_2.include?("1")
  dialogue_2("the door slowly opens and you spring at the burly guard")
  dialogue_2("you sucker punch the guard and grab a knife from his belt as he reels from the blow")
  
  dagger = Weapon.new()
  dagger.attack_val = 10
  dagger.name = dagger
  
  dialogue_2("You have obtained a #{dagger.name}!")
  
  attack("Dickhead_guard", "Dagger")
  
elsif cell_action_option_2.include?("2")
  dialogue_2("you hide in the corner as the guard walks into the small cell")
  
end
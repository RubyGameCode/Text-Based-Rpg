require "Part 2, after character creation"

=begin
  diaglogue_choice_1 = ""
  diaglogue_choice_2 = ""
  diaglogue_choice_3 = ""
  diaglogue_choice_4 = ""
=end

def four_way_dialogue(diaglogue_choice_1, diaglogue_choice_2, diaglogue_choice_3, diaglogue_choice_4)
  dialogue_2(diaglogue_choice_1)
  sleep(0.2)
  dialogue_2(diaglogue_choice_2)
  sleep(0.2)
  dialogue_2(diaglogue_choice_3)
  sleep(0.2)
  dialogue_2(diaglogue_choice_4)
  sleep(0.2)
  dialogue_2("Press 1, 2, 3, or 4 to choose")
 
end

def three_way_dialogue(diaglogue_choice_1, diaglogue_choice_2, diaglogue_choice_3)
  dialogue_2(diaglogue_choice_1)
  sleep(0.2)
  dialogue_2(diaglogue_choice_2)
  sleep(0.2)
  dialogue_2(diaglogue_choice_3)
  dialogue_2("Press 1, 2, or 3 to choose")
end


def two_way_dialogue(diaglogue_choice_1, diaglogue_choice_2)
  dialogue_2(diaglogue_choice_1)
  sleep(0.2)
  dialogue_2(diaglogue_choice_2)
  dialogue_2("Press 1, or 2 to choose")
end


def dialogue(speech_line)
  puts speech_line
  sleep(1)
end





def attack(enemy, weapon, player_character)
    enemy.health -= player_character.base_attack + weapon.attack_val
    
  end
  


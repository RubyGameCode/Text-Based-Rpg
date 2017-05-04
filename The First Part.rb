require "Part 2, after character creation"
require "Page that has some methods to be used frequently"

DEBUGGING = true

class Character   #character class creating
 
  def initialize()
    @name = ""
    @health = 0
    @stamina = 0
    @base_attack = 0
    @hunger_mult = 0
    @parry_chance_mult = 0
    @exp = 0
  end
    
  
  def stats(health, stamina, base_attack, hunger_mult, parry_chance_mult, exp)   #assigns stats based on character armor level chosen later
    @health = health
    @stamina = stamina
    @base_attack = base_attack 
    @hunger_mult = hunger_mult
    @parry_chance_mult = parry_chance_mult
    @exp = exp
  end
  
  def print_stats     #prints out the character's stats after they choose an armor level
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


player_character = Character.new() #creating the player

dialogue_2("Welcome to Prison Labyrinth")
dialogue_2("WARNING")
dialogue_2("EXTREMELY GRAPHIC VIOLENCE AHEAD")
dialogue_2("IF YOU HAVE AN AVERSION TO GORE AND VIOLENCE")
dialogue_2("Well, why did you even start to play OUR game, I mean come on now.")
dialogue_2("What is your name? ")

player_character.name = gets.chomp.capitalize   #naming the character


  print "Ok #{player_character.name}, "
  armor_level = ""
  
  until armor_level.include?("he") or armor_level.include?("med") or armor_level.include?("li")      #defining the player's stats finally
    puts "Pick an armor level!"
    puts "Heavy? Medium? Light?"       #class options
    armor_level = gets.chomp.downcase 
    
    if armor_level.include?("he")                #defining the heavy armor character aspects\
      armor_level = "heavy"
      player_character.stats(180, 75, 30, 2, 0.5, 0) 
       
    elsif armor_level.include?("med")
      armor_level = "medium"
      player_character.stats(150, 100, 50, 1, 1, 0) 
  
    elsif armor_level.include?("lig")
      armor_level = "light"
      player_character.stats(120, 125, 70, 0.5, 2, 0) 
   
    else
      puts "error, not a valid value"
    end
  end
  
if !DEBUGGING
  
  player_character.print_stats
  
  
  
  puts
  dialogue_2("Would you like to begin?")   #beginning of the story
  start_game = gets.chomp.downcase
  
  cell_action_option_1 = ""
  
  
  #decides if you start the game or not
  if start_game.include?("n")
    then puts"Well then what are you still doing here?"
  
  elsif start_game.include?("y") or start_game.include?("su")
    
    
    begin_game
    
 until cell_action_option_1.include?("3")
    
    four_way_dialogue("Option 1: Look out window above you", "Option 2: Look out window to your left.", "Option 3: Bang on door", "Option 4: Squawk like a chicken while running in circles flapping your arms.")

      
    cell_action_option_1 = gets.chomp
  
    
    
    #first option, looking out window above you
    if cell_action_option_1.include?("1")                                                                            
      dialogue_2("Looking out the 'Window' you see a dark candle-lit hallway made of the same stone as your cell,") 
      dialogue_2("A hint of smoke pierces through the musty mildew and rot ")
      puts                                    
    
      
      #looking out window to the left
    elsif cell_action_option_1.include?("2")
      dialogue_2("Through the window you see a cell identical to your own,")
      dialogue_2("its occupant long since dead mummified in the corner")
      puts
    
      
      #bang on door
    elsif cell_action_option_1.include?("3")
      dialogue_2("You bang on the door until blood oozes from your cracked dry hands to no avail")
      dialogue_2("The door is made of solid oak, your hands will break before you even dent it")
      
      #squawk like a chicken
    elsif cell_action_option_1.include?("4")   
      dialogue_2("You have the sudden urge to make an absolute buffoon of yourself and you shake the notion off immediately,")
      dialogue_2("But your armpits are so warm and inviting, you can feel a preliminary squawk bubbling up...")
      dialogue_2("No, you stomp that thought down in favor of trying to find a way out")
      puts
   
      #anything else put in including any possible sass
    else 
      dialogue_2("You have the sudden urge to make an absolute buffoon of yourself and, drained as you are, you give in.")
      dialogue_2("You spend five whole minutes squawking and circling your bathroom pile while flapping your arms")
      dialogue_2("I can't say we expected anything more from you")
      puts
  
  end
 end
  
  #Guard on the way
end #ends the debugging skip code loop
   
  fists =Weapon.new()
  fists.attack_val = 0
  fists.name = fists

  sleep(0.5)
  dialogue_2("you hear loud clumsy footsteps coming towards your cell")
  dialogue_2("the soft jingle of keys comes from behind the door, every muscle in your body tenses with anticipation")

end

#stats :name , :base_attack, :stamina, :hunger_multiplier, :exp, :parry_chance_mult, :health
cell_guard_1 = Character.new()
cell_guard_1.name = "Dickhead_guard"
cell_guard_1.base_attack = 25
cell_guard_1.stamina = 20000
cell_guard_1.hunger_multiplier = 0
cell_guard_1.exp = 0
cell_guard_1.parry_chance_mult = 0
cell_guard_1.health = 160

#guard coming into cell
two_way_dialogue("option 1: prepare to attack whomever may be on the other side of that door", "option 2: Cower in the corner")
cell_action_option_2 = gets.chomp
if cell_action_option_2.include?("1")
  dialogue_2("the door slowly opens and you spring at the burly guard")
  dialogue_2("you sucker punch the guard and grab a knife from his belt as he reels from the blow")
  
  dagger = Weapon.new()
  dagger.attack_val = 10
  dagger.name = "dagger"
  
  dialogue_2("You have obtained a #{dagger.name}!")
  
  #keep in mind that the guard has 160 hp
  #light attack is 70
  #medium attack is 50
  #HEAVY ATTACK IS 30
  attack(cell_guard_1, dagger, player_character)
  
  dialogue_2("The guard stumbles to his feet and grabs his club from his belt.")
  dialogue_2("he charges!")
  
  club = Weapon.new()
  club.attack_val = 5
  club.name = "club"
  
  
  three_way_dialogue("option 1: Stab him in the stones", "option 2: slash his belly", "option 3: Flee because you lack the testicular fortitude to fight like a real man")
  #at this point the guard has 120hp left from the sucker punch
  cell_action_option_3 = gets.chomp
  
  if cell_action_option_3 == "1"
    dialogue_2("The dagger plunges straight through his testicles and right into his prostate causing him to spontaneously piss himself ")
    dialogue_2("you get sprayed with high pressure blood and piss,")
    dialogue_2("Look at the bright side, for the first time in your life you've made a man into a eunuch,")
    dialogue_2("at least you think it's your first time...")
    attack(cell_guard_1, dagger, player_character)
    #the guard now has 80 health and no manhood
    
    
    elsif cell_action_option_3 == "2"
      dialogue_2("As you lunge forward to swipe at his exposed mid-section, the guard swings his club at your side")
      dialogue_2("and it hits hard, knocking the wind out of you, but not slowing your attack.")
      attack(cell_guard_1, dagger, player_character)
      attack(player_character, club, cell_guard_1)
      #if you are light you now have 90hp
      #if you are medium you have 120hp
      #if you are heavy you now have 150hp
      
      dialogue_2("your dagger only seems to slice the surface of the guards massive belly")
      dialogue_2("blood and fat ooze out of the widening gash glistening on the floor")
      attack(cell_guard_1, dagger, player_character)
      #the guard now has a gash in his belly and 80 health
      
  elsif cell_action_option_3 == "3"
    dialogue_2("You dive through the guards legs, he didn't seem to expect this,")
    dialogue_2("you run out of the cell, spitting to get the balls-stank out of your mouth")
    dialogue_2("You sprint down the dark, smoky tunnel with a sense of forboding")
    dialogue_2("growing ever larger as you round corner after corner with no idea where you are or where you are headed.")
    
  end
  
 if not cell_action_option_3 == "3"
  
  if not cell_guard_1.health == 0
    dialogue_2("With the guard reeling from your last blow, you have the perfect opportunity to strike again")
     two_way_dialogue("option 1: Slash his ankle", "option 2: Stomp his kneecap.")
     cell_action_option_4 = gets.chomp
     
     if cell_action_option_4 == "1"
       dialogue_2("You see a ripple on the surface of his skin as the tendons shoot up into his leg") 
       dialogue_2("He screams loudly in pain keeling over, leaving your ears ringing")
       attack(cell_guard_1, dagger, player_character)
       
     else
       dialogue_2("His knee bends inwards with a dry crunch")
       dialogue_2("His eyes widen as he falls backward and slightly bounces as he lands on his back")
       attack(cell_guard_1, dagger, player_character)
       #the guard now has no knee, a gash in either his belly or manhood, and 40hp
     end
     
  else
       dialogue_2("That attack was apparently enough to strike down that mountain of a man.")
       
      end
 
  
      if not cell_guard_1.health == 0
        dialogue_2("The man is lying on the floor schreeching, loud enough to shake the slate around you")
        dialogue_2("His voice fills the entire cell")
        dialogue_2("Jesus Christ can you kill him already, im getting a migrane from just imagining the sound")
        dialogue_2("Press 1 to Prosecute")
        cell_action_option_5 = gets.chomp.downcase
        
        if cell_action_option_5 == "1"
          dialogue_2("You leap onto the man and stab as fast as you can in a blind rage,")
          dialogue_2("unable to perceive anything but the rapid thud of the dagger piercing bone")
          sleep(1)
          dialogue_2("You plunge the dagger down one more time with finality before taking a deep breath")
          dialogue_2("You look down to see the mans ribcage, bones shattered, and the organs hidden by blood pooling at the bottom of the wound")
          
          
        else
          dialogue_2("Somehow this man's voice reached the resonance frequency of the mortar between the bricks of the cell's ceiling")
          dialogue_2("Coincidentally, the brick directly over the man's skull drops straight onto his contorted, screaming face,")
          dialogue_2("Caving in his head reducing it to pile of fractured bone, blood, skin and occasional lumps of pink")
          
          dialogue_2("Sweet, sweet silence")
        end
         
      else
        dialogue_2("After the man screaming for what seemed like forever, silence finally fills the room again")
        dialogue("You appear to have slain the beast, good on you #{player_character.name}")
           
        end
        
      
        
     
      
    
end
   
  
elsif cell_action_option_2.include?("2")
  dialogue_2("you hide in the corner as the guard walks into the small cell")
  sleep(0.5)
  dialogue_2("The guard enters and sees you cowering in the corner like a frightened child.")
  dialogue_2("For a moment you glimpse something akin to pity flash in his eyes, but it is gone as quick as it came.")
  dialogue_2("The guard approaches mumbling something about an execution right before he clubs you in the head repeatedly.")
  dialogue_2("You have now died, congrats on being a huge poltroon you filthy beta")
  dialogue_2("I suppose we should have expected this from you of all people.")
  dialogue_2("Start a new game if you wish to try again, or don't")

  
end



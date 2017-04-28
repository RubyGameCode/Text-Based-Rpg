def begin_game
  dialogue_2("You wake up in a concrete room, slumped against a wall.")
  dialogue_2("Directly infront of you there is a door")
  dialogue_2("To your left there is a barred window,")
  dialogue_2("The wall to your right is a blank gray slate")
  dialogue_2("Above you is another barred window.")
  dialogue_2("What do you want to do?")
  sleep(0.7)
  four_way_dialogue("Option 1: Look out window above you", "Option 2: Look out window to your left.", "Option 3: Bang on door", "Option 4: Squawk like a chicken while running in circles flapping your arms.")
  dialogue_2("Type 1, 2, 3, or 4 to choose")
end


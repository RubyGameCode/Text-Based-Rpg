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
  
end


def dialogue(speech_line)
  puts speech_line
  sleep(1)
end



def dialogue_2(speech_line)
  speech_line.each_char { |symbol|
    print symbol
    $stdout.flush
    sleep(0.015)
  }
  puts
end




def new_game
  puts "Welcome to the Climb Game !!!"
  puts "Rules:"
  puts "You start at level 0, and you have to reach level 10."
  puts "Every turn you will roll a 6 faces dice"
  puts "If you do 5 or 6 you go up"
  puts "If you do 1, you get down"
  puts "If you do 2, 3 or 4 you stay"
  puts "Have fun!"
  roll = dice_roll
  main(roll)
end

def dice_roll
  # return a random number from 1 to 6
  return 1 + rand(6)
end

def display_position(position)
  stairs = Array.new(10, ' ')
  stairs[position] = "X"
  return stairs
end

def main(roll)
  actual_stage = 0
  total_stage = 10
  nb_roll = 1
  while actual_stage <= total_stage
    if roll == 5 || roll == 6
      if actual_stage == 9
        puts "you win"
      end
      actual_stage += 1
      nb_roll += 1
      puts "[Turn #{nb_roll}: #{roll}].climb to stage #{display_position(actual_stage)}"
    elsif roll == 1
      # case where you are at level 0 and roll 1
      if actual_stage == 0
        puts "[Turn #{nb_roll}: #{roll}].climb to stage #{display_position(actual_stage)}"
      else
        actual_stage -= 1
        nb_roll +=1
        puts "[Turn #{nb_roll}: #{roll}].down to stage #{display_position(actual_stage)}"
      end
    else
      nb_roll += 1
      puts "[Turn #{nb_roll}: #{roll}].stay at #{display_position(actual_stage)}"
    end
  roll = dice_roll
  end
end

new_game

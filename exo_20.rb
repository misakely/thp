# La pyramide


def display_pyramid(nb_floors)
  # Display a descendant pyramids of x floors
   1.upto(nb_floors) do |i|
     puts ('*' * i)
   end
 end


def ask_floors()
  # Ask user of many floors he wants (between 1 & 25)
  # return an integer
  puts "Combien d'etages ?";
  floors = gets.chomp.to_i

  if (floors >= 1 && floors <= 25)
    return floors
  else
    puts "Tu m'en demande trop. Entre 1 et 25 etages."
    return 0
  end
end

my_floors = ask_floors()
display_pyramid(my_floors)

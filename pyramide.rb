# La pyramide

def pyramid(nb_floors)
  # Display a descendant pyramid of x floors
   1.upto(nb_floors) do |i|
     puts ('*' * i)
   end
 end

def inverted_pyramid(nb_floors)
  # Display an ascendant pyramid of x floors
  puts "Voici la pyramide:"
  1.upto(nb_floors) do |i|
    puts(' '*(nb_floors - i) + ('*' * i))
  end
end

def ask_floors()
  # Ask user of many floors he wants (between 1 & 25)
  # return an integer
  puts "Bienvenue dans ma super pyramide. Combien d'etages veux-tu ? (1-25)";
  floors = gets.chomp.to_i
  if (floors >= 1 && floors <= 25)
    return floors
  else
    puts "Tu m'en demande trop. Entre 1 et 25 etages."
    return 0
  end
end

my_floors = ask_floors()
inverted_pyramid(my_floors)

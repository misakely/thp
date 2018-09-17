# La pyramide

class Pyramid
  attr_accessor :nb_floors

  def initialize()
    # Ask user at initialization how many rows he wants
    puts "===================="
    puts "Pyramid Builder 1.0"
    puts "====================\n\n\n"
    puts "Bienvenue dans Pyramid Builder. Combien d'etages veux-tu ? (1-25)";
    print ">"
    @nb_floors = gets.chomp.to_i
    # We want only pyramids of 25 height maximum
    @nb_floors = nb_floors if (nb_floors >= 1 && nb_floors <= 25)
    puts "Tu m'en demande trop. Entre 1 et 25 etages."
  end

  def descendant()
    # Display descendant way
    1.upto(@nb_floors) {|i| puts ('*' * i)}
  end

  def inverted()
    # Display an ascendant way
    puts "\n\n\nVoici une partie de ta pyramide:\n\n"
    1.upto(@nb_floors) {|i| puts(' '*(@nb_floors - i) + ('*' * i))}
  end

  def descendant_while()
    # Use a while
    i = 1
    while i <= @nb_floors
      puts ('*' * i)
      i += 1
    end
  end
end

my_pyramid = Pyramid.new()
my_pyramid.inverted

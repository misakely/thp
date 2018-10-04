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
  end

  def bye()
    puts "Au revoir"
  end

  def descendant()
    # Display descendant way
    1.upto(@nb_floors) {|i| puts ('*' * i)}
  end

  def inverted(symbol)
    # Display an ascendant way
    puts "\n\n\nVoici une partie de ta pyramide:\n\n"
    1.upto(@nb_floors) {|i| puts(' '*(@nb_floors - i) + ("#{symbol}" * i))}
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

# NEw instance of Pyramid
my_pyramid = Pyramid.new()
# Control oustide object (best practise?)
# We want floors 1..25
if (my_pyramid.nb_floors >=1 && my_pyramid.nb_floors <= 25)
  my_pyramid.inverted("#")
else
  puts "#{my_pyramid.nb_floors} n'est pas valide"
end

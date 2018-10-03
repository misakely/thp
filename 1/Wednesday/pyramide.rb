# Pyramide.rb

def ask_user
  # return an integer
  puts "Bienvenue dans Pyramid Builder. Combien d'etages veux-tu ?";
  print ">"
  return gets.chomp.to_i
end

def pyramide(rows)
  puts "\n\n\nVoici une partie de ta pyramide:\n\n"
  1.upto(rows) {|i| puts(' '*(rows - i) + ("#" * i))}
end

def odd_pyramide(rows)
  rows.times do |i|
    print ' ' * (rows - i)
    puts '#' * (2 * i + 1)
  end
end

def perform
  rows = ask_user
  odd_pyramide(rows)
end

perform

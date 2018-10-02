print "Donne moi ton annee de naissance: "
# We need an integer, not a string
birthday = gets.chomp.to_i

#  user age in 2017
age_2017 = 2017 - birthday
puts "Tu avais #{age_2017} en 2017."

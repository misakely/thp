# Afficher tous les ages
print "Donne moi ton age: "
# store this num
age = gets.chomp.to_i
age.times {|i| puts "Il y a #{i} ans, tu avais #{age - i} ans"}

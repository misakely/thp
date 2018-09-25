# ask user his birthday
print "Donne moi ton age: "
# store this num
age = gets.chomp.to_i

# display age of user at a certain year
age.times do |i|
    if i == age - i
      puts "Il y a #{i} ans, tu avais la moitie de l'age que tu as aujourdhui"
    else
      puts "Il y a #{i} ans, tu avais #{age - i} ans"
    end
end

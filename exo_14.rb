# Compte a rebours

# ask user a number
print "Donne moi un nombre: "
# store this num
user_nb = gets.chomp.to_i

# count start this number until 0
while user_nb >= 0
  puts user_nb
  user_nb -= 1
end

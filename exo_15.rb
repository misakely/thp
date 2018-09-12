# Afficher tous les ages

# ask user his birthday
print "Donne moi ton annee de naissance: "
# store this num
user_birthday = gets.chomp.to_i
age = 0

# display year and age of user in this year until 2017
while user_birthday <= 2017
  if age == 0 # case with age = 0.
    puts "Tu es ne en #{user_birthday}."
  else
    puts "En #{user_birthday}, tu avais #{age} ans."
  end
  # incrementation for next turn
  user_birthday += 1
  age += 1
end

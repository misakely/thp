# ask user his birthday
print "Donne moi ton annee de naissance: "
# store this num
user_birthday = gets.chomp.to_i

# print years  until 2018
while user_birthday <= 2018
  puts user_birthday
  user_birthday += 1
end

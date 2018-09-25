# compter

# ask user a number
print "Donne moi un nombre: "
# store this num
user_nb = gets.chomp.to_i

# count until this number
puts "Je vais compter de 0 a #{user_nb}"
for i in 1..user_nb
  puts "#{i}"
end

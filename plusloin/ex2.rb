# 2 . Crée un array, et renvoie la somme de tous les nombres positifs.
# Par exemple : [1,-4,7,12] => 1 + 7 + 12 = 20 Si il n'y a rien à additionner, la somme est 0 ;)

my_array = [1, -6, 7 , -18]

def sum_positive(array)
  # Return the sum of positive items in a array
  sum = 0
  # For each items if item positiv, sum up
  array.each do |i|
    if i > 0
      sum += i
    end
  end
  return sum
end

puts sum_positive(my_array)

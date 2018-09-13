#8 . Additionne tous les nombres d'une array... Sauf le plus petit et le plus gros nombre.
#Par exemple : { 6, 2, 1, 8, 10 } => 16 & { 1, 1, 11, 2, 3 } => 6


def deleteMinMax(a)
  a.delete_at(a.find_index(a.min))
  a.delete_at(a.find_index(a.max))
  return a
end

def sumArray(a)
  sum = 0
  a.each do |i|
    sum += i
  end
  puts sum
end

a = [6, 2, 1, 8, 10]
b = [1, 1, 11, 2, 3]

sumArray(deleteMinMax(a))
sumArray(deleteMinMax(b))

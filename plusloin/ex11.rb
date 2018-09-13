#11 . Écris une fonction summation qui renvoie l'addition de chaque nombre entre 1 et le nombre rentré en paramètre.
# Le nombre donné sera toujours positif et supérieur à 0.
# Par exemple : summation(2) -> 3 renvoie 1 + 2 summation(8) -> 36 renvoie 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8


def summation(a)
  sum = 0
  i = 1
  while i <= a
    sum += i
    i += 1
  end
  return sum
end

puts summation(2)
puts summation(8)

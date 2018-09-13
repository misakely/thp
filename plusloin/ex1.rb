# 1 . Crée une fonction qui prend un integer comme argument
# et qui renvoie "pair" pour les nombres pairs et "impairs" pour les nombres impairs.

def parite(foo)
  if (foo % 2 == 0)
    return "pair"
  else
    return "impairs"
  end
end

puts "Exemple avec 18:"
puts parite(18)

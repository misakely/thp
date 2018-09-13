# 10 . Yes, t'es au dixième exo ! Voici un truc un peu plus challengeant
# Renvoie un array, dans lequel le premier élément est la somme des nombres positifs
# et le deuxième la somme des nombres négatifs.
# Par exemple : Cet array : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] Renvoie : [10, -65]


def challenge(a)
  # Return an array of sum + and sum -
  positiv = 0
  negativ = 0

  a.each do |x|
    if x > 0
      positiv += x
    elsif x < 0
      negativ += x
    end
  end
  return [positiv, negativ]
end

print challenge([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
print challenge([1, -1])
print challenge([1, 9, 10, -1])

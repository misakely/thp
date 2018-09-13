# Crée une fonction qui enlève la première et dernière lettre
# d'une chaîne de caractères. Un seul paramètre, la CDC originale.

def decapite(foo)
  bar = foo.chars
  bar.delete_at(0)
  bar.pop
  puts ( foo + " => " + bar.join(""))
end

decapite("abcdefg")

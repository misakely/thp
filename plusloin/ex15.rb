# Créé une fonction qui répète chaque lettre de la chaîne de caractère en argument.
# Par exemple : double_char("String") ==> "SSttrriinngg"

def double_char(s)
  s2 = ""
  s.chars.each do |letter|
    s2 << letter * 2
  end
  puts s2
end

def triple_char(s)
  s2 = ""
  s.chars.each do |letter|
    s2 << letter * 3
  end
  puts s2
end

def n_char(s, n)
  s2 = ""
  s.chars.each do |letter|
    s2 << letter * n
  end
  puts s2
end

double_char("String")
n_char("Troll", 7)

def echo(s)
  s
end

def shout(s)
  echo(s).upcase
end

def repeat(s,n=2)
  ("#{s} "*n).rstrip
end

def start_of_word(s, n)
  s[0..n-1]
end

def first_word(s)
  s.partition(" ").first
end

def titleize(s)
  excludes = "and the"
  s2 = s.split.map{|w| excludes.include?(w) ? w : w.capitalize}.join(" ")
  s2[0] = s2[0].capitalize
  return s2
end

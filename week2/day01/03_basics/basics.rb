def who_is_bigger(a,b,c)
  # tell the biggest
  arri = [a,b,c]
  if arri.include? nil
    return "nil detected"
  elsif arri.max == a
    return "a is bigger"
  elsif arri.max == b
    return "b is bigger"
  else return "c is bigger"
  end
end

def reverse_upcase_noLTA(s)
  # does crazy stuffs on strings
  s.reverse.upcase.tr('LTA', '')
end

def array_42(arri)
  # finds 42
  arri.include? 42
end

def magic_array(a)
  # crazy stuffs on array
  new_a = Array.new
  a.flatten.uniq.sort.each do |i| # flatte, uniq, sort
    if (i % 3) == 0
    else
      new_a << i * 2
    end
  end
  return new_a
end

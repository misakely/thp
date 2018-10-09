def multiple_3_5(limit)
  sum = 0
  (1..limit-1).each do |i|
    # add multiple of 3 and 5 to sum
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  return sum
end

def main
  puts "Somme des multiples de 3 et 5 inférieurs à 10: #{multiple_3_5(10)}"
  puts "Somme des multiples de 3 et 5 inférieurs à 1000: #{multiple_3_5(1000)}"
end

main

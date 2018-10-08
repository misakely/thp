def add(a,b)
  # add positive numbers
  a + b
end

def subtract(a,b)
  # substracts numbers
  a - b
end

def sum(arri)
  # computes the sum array
  arri.sum
end

def multiply(a,b)
  # multiply two numbers
  a * b
end

def power(a,b)
  # raise one number to the power of another number
  a ** b
end

def factorial(a)
  # return the factorial of number given
  result = 1
  (1..a).each {|i| result *= i }
  return result
end

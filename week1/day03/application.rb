def say_hello(name)
  # say hello
  puts "bonjour #{name}"
end

def ask_first_name()
  # return string given by user
  puts "Quel est ton prénom ?"
  print ">"
  return gets.chomp
end

def perform
  username = ask_first_name
  say_hello(username)
end

perform

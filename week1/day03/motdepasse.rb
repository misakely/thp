def define_password
  puts "Enregistrement du mot de passe:"
  print ">"
  @user_password = gets.chomp
end

def password_verification
  puts "Saisissez votre mot de passe une deuxiéme fois:"
  print "password:"
  if @user_password == gets.chomp
    puts "Ok"
  else
    puts "Le mot de passe n'est pas identique"
  end
end

def connect(password)
  while password != @user_password

  if password == @user_password
    puts "You are online."
  else
    puts "Wronf password"
  end
end

def perform
  define_password
  password_verification
  connect("j")
end

perform

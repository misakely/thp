# CLASS
class Person
  # initialize is the boot-up definition of a new instance
  def initialize(name)
    # @ for instance variable. Attached to the instance of the class
    # Each instance of Person will have its own @name
    @name = name
  end
end


# Create an instance of Person, argument as a name
matz = Person.new('Yukihiro')

# SCOPE

# $ : global variable
# @ : instance variable
# @@ : class variable

=begin
class Myclass
  my_variable = "Hello!"
end
# my_variable is not reachable outside a class.
# add $ to my_variable's to be global
puts my_variable
=end

class Myclass
  $my_variable = "Hello!"
end
puts $my_variable

class Person
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end



# @@ Example
# Create a variable to count number of Persone instances
class PersonB

  @@people_count = 0
  def initialize(name)
    @name = name
    @@people_count += 1
  end

  def self.number_of_instances
    @@people_count
  end
end

julien = PersonB.new("Julien")
elsa = PersonB.new("Elsa")

puts "Number of PersonB instances: #{PersonB.number_of_instances}"


# INHERITANCE

class ApplicationError
  def display_error
    3.times {puts "Error"}
  end
end

class SuperError < ApplicationError
end

err = SuperError.new
err.display_error

# OVERRIDE

class Message
  def send
    puts "Envoi du message"
  end
end

class Email < Message
  # send method of email instance while overrride send method of parent Message object
  def send
    puts "Envoi du mail"
  end
end

mail = Email.new
mail.send

# Attributes of a superclass (super)

class Creature
  def initialize(name)
    @name = name
  end

  def fight
    "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    # Call superclass method fight
    super
  end
end

my_dragon = Dragon.new("Tini")
puts my_dragon.fight

# Only one superclass inherit

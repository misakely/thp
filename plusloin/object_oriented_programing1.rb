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

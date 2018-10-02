# REVIEW

class Dog

  def initialize(name, breed)
    @name = name
    @breed = breed
  end
end


# public class
class Dog

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public
  def foo
    puts "foo"
  end

  # private
  private
  def bar
    puts "bar"
  end
end

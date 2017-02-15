class Animal
  # this creates get and set for @stomach
  # this is called meta programming
  # code that writes code
  attr_accessor(:stomach)

  # this gets called at initialization
  def initialize(name, type)
    # these are instance variables for the object
    @name = name
    @type = type
    @stomach = []
  end

  # these are instance methods
  def eat(prey)
    @stomach.push(prey)
  end

  def speak
    "blargh"
  end

  def say_name
    "My name is #{@name}"
  end

  # attr_accessor creates these methods for us
  # def stomach
  #   @stomach
  # end

  # def stomach=(a)
  #   @stomach = a
  # end
end

class Dog < Animal

  def initialize(name)
    # super invokes parent class initialize
    super(name, "Dog")
  end

  def say_name
    # super here invokes parent say_name
    super + " Woof!" + speak
  end

end

# .new is a class method
a1 = Animal.new("Toby", "Dolphin")
d1 = Dog.new("Trufflles")
puts d1.say_name
puts a1.say_name

d1.eat(a1)
d1.eat(Animal.new("Tony", "Tiger"))

# this calls the method .stomach that returns @stomach
puts d1.stomach.size

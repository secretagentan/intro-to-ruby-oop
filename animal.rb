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

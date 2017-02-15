require('./animal.rb')

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

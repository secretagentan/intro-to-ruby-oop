require('./animal.rb')
require('./dog.rb')

# .new is a class method
a1 = Animal.new("Toby", "Dolphin")
d1 = Dog.new("Truffles")
puts d1.say_name
puts a1.say_name

d1.eat(a1)
d1.eat(Animal.new("Tony", "Tiger"))

# this calls the method .stomach that returns @stomach
puts d1.stomach.size

# Ruby classes
# see examples class.rb

# declare a class
class Animal
  # create setter and getter methods to set and retrive instance variables from outside the class definition
  attr_accessor :name, :age

  # constructor - runs every time an object is created
  def initialize(name, age)
    # set instance variables - they will be available for all the methods, hold the state of the object
    # name, age instance vars have different values for every created object
    @name = name
    @age = age
    @id = 'some_id'
  end

  # instance method available for all objects
  def run
    puts "#{@name} is running."
  end
end

class Dog < Animal
  # if you do not define the initialize method will be exactly as the Animal class
  # the @name, @age and @id are available are the first 2 required when creating a new object
  def fetch_stick
    puts "#{@name} brings the stick back"
    puts @id
  end
end

animal = Animal.new("Robby", 12)
p animal.name
animal.run
# change instance var
# this is actually a method call animal.name=("Miky")
animal.name = "Miky"
p animal.name

dog = Dog.new("Rocky", 3)
p dog.age
dog.run
dog.age = 5
p dog.age
dog.fetch_stick
# undefined method id
# @id does not have a setter or getter method defined so it is not available from outside the class definition
# dog.id


class Cat < Animal
  attr_reader :eye_color
  # if you define intialize method you have to write the attributes from parent and pass them to the super method
  def initialize(name, age, eye_color)
    super(name, age)
    @eye_color = eye_color
  end

  def show_id
    @id
  end
end

cat = Cat.new("Miau", 1, "green")
# @id was also inherited from Animal
p cat.show_id
p cat.name
p cat.age
p cat.eye_color
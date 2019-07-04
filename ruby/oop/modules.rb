# modules
# Class < Module
# a module is a collection of methods
# does not have instances
# it must be included in a class
# method lookout path:
# class - included modules - superclass - superclass included modules
# or prepended modules - class - ...
# include and prepend make the methods available as instance methods
# extend a module - makes the methods available as class methods

module Stacklike
  def stack
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end
end

class Suitcase
end

class CargoHold
  # include the module
  include Stacklike

  def load_and_report(obj)
    print 'Loading object '
    puts obj.object_id
    add_to_stack(obj)
  end

  def unload
    take_from_stack
  end
end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unloaded = ch.unload
print 'The first unloaded is... '
puts first_unloaded.object_id
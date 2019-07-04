# if 2 methods have the same name in the hierarchy chain you can call super method to call the next method in the chain
# super args:
# - super - all the args passed to the method will be passed to super too
# - super() - no args are passed
# - super(arg1) - exactly the passed args

class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gears=1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def rent
    puts "Sorry the model is sold out!"
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end

  def rent
    puts "This model is available!"
  end
end

t = Tandem.new(1)
p t.method(:rent) # Tandem#rent
# only works if a super method is defined in the method hierarchy
p t.method(:rent).super_method # Bicycle#rent

t.method(:rent).call
t.method(:rent).super_method.call
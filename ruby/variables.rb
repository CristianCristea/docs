# Variables
# Ruby variables are often named labels or names for objects

# variables as pointers
#! variables hold references to objects not the objects themselfs
#! only integers, symbols, true, false and nil are stored as values not references
# more vars can point to the same object
a = "here"
b = a
b << ' updated'

p a # here updated
p b # here updated

# if you reassign a value, it will get a new reference to a new object
# it will lose the previous reference
a = "here"
b = a
b = "new here"

p a # here
p b # new here

#! any object represented as immediate value is always exactly the same object no matter how many variables it's assigned to
#! there is only one true, one nil, one 100, one :symbol_name

# references and method arguments
# when you pass an object as an argument you pass the reference to it
# if the method mutates the object, he will also change outside the method

s = "original"

def replace_original(string)
  string.replace("replaced")
end

p replace_original(s) # replaced
# String
# https://ruby-doc.org/core-2.5.0/String.html - documentation
string = 's'
string = "s"

# string concatenation
"Hello " + "world" #! returns a new string
"hello " << "world" #! mutates the string
"hello".concat("world") #! mutates the string

# string interpolation works only with ""
# evaluate the expression and insert the value into the string
name = 'Cris'
puts "Hello #{name}"

# access chars of a string
string = "abcdefgh"

# index based - it's alias for string.slice(start, length)
string[0] # a
string[0, 2] # ab -> start at 0, length 2
string[0..2] # abc -> start at index 0 upto(inclusive) index 2

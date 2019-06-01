# this is a single line comment
=begin
this is a multiline comment
=end

# load external files
# loads the file every time the load method appears
load 'file/to/path'
# require loads the feature just one time even with multiple require declarations
# used for gems not for files
require 'pry'
# require_relative use for files
require_relative 'path/to/file'

# expression evaluation
#* every expression evaluates to true except false and nil

# variable declaration
number = 1

# naming conventions
$global_variable = true
class ClassName
  @instance_variable = true
  @@class_variable = true
end
CONSTANT_NAME = true
file_name = true
local_variable = true
mutate_arg_method!(arg)
return_boolean_method?(arg)

# basic I/O
print "hello" # print line to console
puts "hello" # put string to console, same as print but adds new line
p "hello" # calls #inspect on the arg, good for debugging

# store input from the console
puts "what's your name"
name = gets.chomp # store input from user, chomp removes the new line (\n)
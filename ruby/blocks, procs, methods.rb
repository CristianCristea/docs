#* blocks
# code between {} or do/end that follows a method call
[1,2,3].each do |n|
  puts n
end



#* procs

#* methods
# method definition
def test_method(params)
  #body
end

# always returns a value
# returns the value to which the expression on the last line evaluates to
# or use return keyword to return a value and "exit", the lines after return will not run

# parameters and arguments
# required args
# invoke the methods with a different number of args will raise an ArgumentError
def required_args(a, b)
end

required_args('arg1', 'arg2')

# optional args
# call the method with or without args
# the method will take any number of args or none
# the args will be available as an array
def optional_args(*a)
end

optional_args # []
optional_args(1,2) # [1, 2]

# default args
# if you don't supply the arg will have the default value
def default_args(a, b=1)
end

default_args(0) # 0, 1

# Order of the argument types
# required args have priority
# you can't put default args after optional arg

# mix the argument types
# 2 args are required, but you can supply more
def two_or_more(a, b, *c)
end
two_or_more(1,2,3,4,5) # 1, 2, [3, 4, 5]

def args_unleashed(a, b=1, *c, d, e)
  p a, b, c, d, e
end

args_unleashed(1,2,3,4,5) # 1, 2, [3], 4, 5
args_unleashed(1,2,3,4) # 1, 2, [], 3, 4
args_unleashed(1,2,3) # 1, 1, [], 2, 3
args_unleashed(1,2,3,4,5,6,7,8,9) # 1, 2, [3, 4, 5, 6,7], 8, 9
args_unleashed(1,2) # ArgumentError expected 3+


# method invocation
test_method(arg)
#! emember that a reference to an object inside a collection isn’t the same as a reference to the collection.

#* #freeze an object
# prevent an object to be changed
# freezing is forever

s = "string".freeze
s.frozen? # true
s << " updated" # FrozenError - can't modify frozen String

# when a collection contains another collection
# you freeze the outer collection but not its elements

arr = %w(apples cherrys).freeze
arr.frozen? # true
arr.push("kraut") # FrozenError
arr[0] << " updated"
p arr[0] # apples

#* #dup
#! makes a shallow copy of an object
# does not copy the frozen attribute
# if you copy a frozen obj, the copy will not be frozen - use #clone for that

s = "string"
s2 = s.dup
s.object_id == s2.object_id # false

#! if the object is a collection that  contains other objects they will not be copied
original = %w(apple orange banana)
copy = original.dup

# only the array gets copied but the strings inside are the same objects
original.object_id == copy.object_id # false

# the strings inside will have the same ids
# the copy holds the same object references as the original
original.map(&:object_id) == copy.map(&:object_id) # true

# fix
original.dup.map(&:dup);
original.map(&:object_id) == copy.map(&:object_id) # false


#* clone
# same as dup
# shallow copy
# but keeps the object attributes: frozen, tainted, singleton class
# if you copy a frozen obj, the copy will also be frosen

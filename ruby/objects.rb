# #methods
# all methods available for this object
obj = Object.new
obj.methods

# #object_id
# uniq object id
obj.object_id

# #responds_to
# ask tho obj if he responds to a method
if obj.respond_to?(talk)
  obj.talk
else
  "No talk method on #{obj}"
end

# #send, #__send__
# __send__ is an alias to send - are the same :D
# send messeges to obj
obj.send(talk)
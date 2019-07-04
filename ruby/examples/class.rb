class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  # if the object can't find a method it will call method_missing
  # you can redefine method_missing - see ex
  def Person.method_missing(m, *args)
    method = m.to_s
    if method.start_with?('all_with_')
      attr = method[9..-1]
      if Person.public_method_defined?(attr)
        PEOPLE.select do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end

j = Person.new('John')
pa = Person.new('Pauli')
g = Person.new('George')
r = Person.new('Ringo')

j.has_friend(pa)
j.has_friend(g)
g.has_friend(pa)
r.has_hobby('rings')

Person.all_with_friends(pa).each do |person|
  puts "#{person.name} is friends with #{pa.name}"
end

Person.all_with_hobbies('rings').each do |person|
  puts "#{person.name} is into rings."
end

e = Person.new('Eric B.')
r = Person.new('Rakim')
e.has_friend(r)
e.has_hobby('cycling')
r.has_hobby('drums')
Person.all_with_hobbies('drums').each do |person|
  puts "#{person.name} is into drums"
end
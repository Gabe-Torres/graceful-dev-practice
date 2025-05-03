class C
  # class level method - .self
  # self is the object currently being defined, in ruby everything is an object.
  # in ruby everything is an object.
  def self.foo
    puts "who needs instances, I'm a class method!"
  end

  puts "Hello from #{self}"
end

# c.foo
#>> who needs instances, I'm a class method!

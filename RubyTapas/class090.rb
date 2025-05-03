class C
  # class level method - .self
  # self is the object currently being defined, in ruby everything is an object.
  # in ruby everything is an object.
  # def self.foo # were saying attach this new method to the current class object
  #   puts "who needs instances, I'm a class method!"
  # end

  # puts "Hello from #{self}"

  #  you can also explicitly call the class instead of self. not used because it is duplication and one more thing to update if the class name is ever changed.
  def C.bar
    puts "I'm a class method too!"
  end
end

C.foo
C.bar
#>> who needs instances, I'm a class method!

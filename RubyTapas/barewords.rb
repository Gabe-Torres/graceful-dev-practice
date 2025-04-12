# PROCESS 1

# $progname = "Dis-organizer"

# module DisOrganizer
#   VERSION = "Mark 7"
# end

# class CoffeeEnabled
#   def service_inquiry
#     "order you a coffee"
#   end
# end
# class ObsequiousImp
#   SALUTATION = "Most agreeable to see you"

#   attr_accessor :special_feature

#   def initialize(designation)
#     @designation = designation
#   end
#   def greet(title, first_name, last_name)
  
#     puts "#{SALUTATION}, #{title} #{first_name} #{last_name}. ",
#           "Welcome to #{$progname} version #{DisOrganizer::VERSION}.",
#           "My name is #{@designation}.",
#           "May I #{special_feature.service_inquiry}?"
#   end
# end

# imp = ObsequiousImp.new("Seeree")
# imp.special_feature = CoffeeEnabled.new
# imp.greet "Commander", "Sam", "Vimes"
# 
#
# 


# PROCESS 2

# make the progname name global by defining it as a method on the top main object
# main object properties causes the method to become private on all objects
# Greet code remains unchanged
def progname; "Dis-ogranizer"; end

# declare progname version as an instance method in the DisOrganzier module
# and include module in ObsequiousImp class, method becomes useable within the class
# Greeting code remains unchanged
module DisOrganizer
  def version; "Mark 7"; end
end

# add special feature collaborated, define a special inquiry method within ObsequiousImp 
# class that delegates back to the special feature collaborator
class CoffeeEnabled
  def service_inquiry
    "order you a coffee"
  end
end
class ObsequiousImp
  include DisOrganizer

#  for designation add an attr_reader and initialize param. now references an instance method
#  Greeting Code remains unchanged
  attr_reader :designation
  attr_accessor :special_feature

  def initialize(designation)
    @designation = designation
  end

# makes the salutation a class level property. 
# Greeting code unchanged.
  def salutation; "Most agreeable to see you"; end

  def service_inquiry
    special_feature.service_inquiry
  end

  #  update method signature to accept a first and last name
  #  add a local variable the combines the two into a full name
  #  Greeting code remains unchanged
  def greet(title, first_name, last_name)
    full_name = "#{first_name} #{last_name}"

    puts "#{salutation}, #{title} #{full_name}. ",
          "Welcome to #{progname} version #{version}.",
          "My name is #{designation}.",
          "May I #{service_inquiry}?"
  end
end

imp = ObsequiousImp.new("Seeree")
imp.special_feature = CoffeeEnabled.new
imp.greet "Commander", "Sam", "Vimes"
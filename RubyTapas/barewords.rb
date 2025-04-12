$progname = "Dis-organizer"

module DisOrganizer
  VERSION = "Mark 7"
end

class CoffeeEnabled
  def service_inquiry
    "order you a coffee"
  end
end
class ObsequiousImp
  SALUTATION = "Most agreeable to see you"

  attr_accessor :special_feature

  def initialize(designation)
    @designation = designation
  end
  def greet(title, first_name, last_name)
  
    puts "#{SALUTATION}, #{title} #{first_name} #{last_name}. ",
          "Welcome to #{$progname} version #{DisOrganizer::VERSION}.",
          "My name is #{@designation}.",
          "May I #{special_feature.service_inquiry}?"
  end
end

imp = ObsequiousImp.new("Seeree")
imp.special_feature = CoffeeEnabled.new
imp.greet "Commander", "Sam", "Vimes"
class ObsequiousImp
  def greet(title, full_name)
    salutation = "Most agreeable to see you"
    progname = "Dis-organizer"
    version = "Mark 7"
    designation = "Seeree"
    service_inquiry = "order you a coffee"
  
  
  
  
  
  
  

    puts "#{salutation}, #{title} #{full_name}. ",
          "Welcome to #{progname} version #{version}.",
          "My name is #{designation}.",
          "May I #{service_inquiry}?"
  end
end

ObsequiousImp.new.greet "Commander", "Sam Vimes"
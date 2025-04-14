# Using regular expression to match phone numbers to local format.
# This method works, wrapping single statement is not not needed but lets others know that '=' within the conditional was purposeful.
# r = /\d{3}-\d{4}/
# if (match = r.match("my number is 555-1234"))
#   puts "Found #{match}"
# end
# 
# This method can replace the 'if' statement but doesn't consider 'what if the match fails' aka nil.
# r = /\d{3}-\d{4}/
# r.match("my number is 555-1234") do |match|
#   puts "Found #{match}"
# end
# 
# In the case of needing a success or fail then a traditional if statement is best
# but why do match pass through the block return value?
# r = /\d{3}-\d{4}/
# if match = r.match("my number is 555-1234")
#   puts "Found #{match}"
# else 
#   raise "no number found"
# end
# 
r = /(\d{3})-\d{4}/
exchange =  r.match("number is 555-1234") { |match| match[1] }
puts exchange

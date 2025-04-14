# Using regular expression to match phone numbers to local format.
# This method works, wrapping single statement is not not needed but lets others know that '=' within the conditional was purposeful.
r = /\d{3}-\d{4}/
if (match = r.match("my number is 555-1234"))
  puts "Found #{match}"
end
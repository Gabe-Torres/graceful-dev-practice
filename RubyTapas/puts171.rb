# Advanced put-s usage 'PUT string'
# 
# standard out global variable
# $stdout.puts "Hello, world"

# make all puts send right to a file instead
# $stdout = open("out.log", "w")
# puts "Hello World"
# $stdout.close
# File.read("out.log")
# 
# Can also be used to create space
# puts
# puts
# puts
# puts Time.now
# puts
# puts
# 
# Can take an arbitrary number of arguments and puts to its own line
# puts "the time is:", Time.now, "Ur lucky number is:", rand(10)

# Will also flatten arrays! and print each element to its own line
# faves = [
#   "raindrops on roses",
#   [
#     "whiskers on kittnes",
#     "bright copper kettles"
#   ]
# ]
# puts "My Favorite Things:", faves

#  puts is also smart about printing new lines, and wont print new lines if a line already has one
#  Can puts lines directly from a file and there wont be doubled up new lines
# puts "Hello, world\n"
#
# when puts with multiple lines some lines will get mashed up hmmm but mine didn't! Could be updated since this Tapas was released. Pretty cool!
# but it used to happen because puts would add its line right after printing the string. 
t1 = Thread.new do
  10.times do puts "Thread 1 is awesome" end
end

t2 = Thread.new do
  10.times do puts "Thread 2 is the best" end
end

t2.join
t1.join
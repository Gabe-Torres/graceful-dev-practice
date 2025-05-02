# shopping_list = ["bread", "milk", "granola"]
# shopping_list = ["swiss", "brie", "cheddar"]


# # when ading the contents of other arrays shovel << doens't work
# shopping_list << ["swiss", "brie", "cheddar"]
# puts shopping_list #=> ["bread", "milk", "granola", ["swiss", "brie", "cheddar"]]
# # array within array not the model ideal outcome
# # shopping_list.flatten would be needed to make it useable. 
# # 
# shopping_list += ["swiss", "brie", "cheddar"] # => kinda works

class Shopper 
  def initialize(list)
    @list = list
  end

  attr_accessor :list
end

# s = Shopper.new(["bread", "milk", "granola"])
# s.list += ["swiss", "brie", "cheddar"]
# s.list #=> undefined method `list=' for #<Shopper:0x00000001021d94f0 @list=["bread", "milk", "granola"]> (NoMethodError)

# # += is equal to something like (s.list + ["swiss", "brie", "cheddar"])

shared_list = ["bread", "milk", "granola"]
stacey = Shopper.new(shared_list)
avdi = Shopper.new(shared_list)
# stacey.list += ["swiss", "brie", "cheddar"]
stacey.list.concat(["swiss", "brie", "cheddar"])


# avdi doesn't get the new contents because plus equals += assigns a new array to the attribute
# so really this doesn't add items to the shared list. its replacing it with a new one.
puts stacey.list
puts
puts
puts avdi.list
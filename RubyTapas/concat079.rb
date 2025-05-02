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

  attr_reader :list
end

s = Shopper.new(["bread", "milk", "granola"])
s.list += ["swiss", "brie", "cheddar"]
s.list #=> undefined method `list=' for #<Shopper:0x00000001021d94f0 @list=["bread", "milk", "granola"]> (NoMethodError)

# += is equal to something like (s.list + ["swiss", "brie", "cheddar"])
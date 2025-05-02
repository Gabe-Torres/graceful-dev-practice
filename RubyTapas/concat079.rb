shopping_list = ["bread", "milk", "granola"]
shopping_list = ["swiss", "brie", "cheddar"]


# when ading the contents of other arrays shovel << doens't work
shopping_list << ["swiss", "brie", "cheddar"]
puts shopping_list #=> ["bread", "milk", "granola", ["swiss", "brie", "cheddar"]]
# array within array not the model ideal outcome
# shopping_list.flatten would be needed to make it useable. 
# 
shopping_list += ["swiss", "brie", "cheddar"] # => kinda works


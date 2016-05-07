# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash where items and quantities will be stored
  # use input of a string of items to split them into individual items
  # Then loop through to assign default quantity value of 1
  # print the list to the console using a print_list method
  # output: while my print list wil show up in a nice format, grocery_list is a hash that puts items as keys and quantities as       their value.

def create_list(items)
  grocery_list = {}
  arr_list = items.split(' ')
  
  arr_list.each do |item|
    grocery_list[item] = 1
  end
  
  print_list(grocery_list)
  # return grocery_list (when I put this method for print_list I no longer needed the return grocery_list line)
end


# Method to add an item to a list
# input: item name and quantity
# steps: use parameters to extract the grocery_list hash, the item to be added and the quantity
# output: the implicit return of this method is the hash value, or quantity. When we use this method, and then print the grocery list, we see that the item was added to the hash which is the output we wanted, the new hash with the item and quantity added.
def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
end


def delete_item(grocery_list, item) 
  grocery_list.delete(item)
  return grocery_list
end


def update_item(grocery_list, item, quantity)
   grocery_list[item] = quantity
end


def print_list(grocery_list)
  grocery_list.each {|item, key| puts "#{item}: #{key}"}
end


#Driver Code
grocery_list = create_list("carrots pickles olives")

add_item(grocery_list,"spinach", 2)
p grocery_list

delete_item(grocery_list, "carrots")
p grocery_list

update_item(grocery_list, "pickles", 4)
p grocery_list

print_list(grocery_list)

#release 3
#create a new list
new_list = create_list("")

# add items to your list
add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)

#print new list
p new_list

#delete lemonade from list
delete_item(new_list, "lemonade")
p new_list

# update Ice Cream quantity
update_item(new_list, "Ice Cream", 1)
p new_list

# Print readable list:
print_list(new_list)

# Release 5 Reflect:
# What did you learn about pseudocode from working on this challenge?
  # You should consider input, then the steps to complete the task and then what output you want.
# What are the tradeoffs of using arrays and hashes for this challenge?
  # Hashes allowed you to access items of the grocery lists using their name which is easier for a user. Arrays would require     that you know the index number of the item to acess its information. Hashes allowed us to store value of quantity with an       item. Arrays only allow for a list of items so it would be hard to read the quantity associated with each item. 
# What does a method return?
  # A method returns the last line of the method.
# What kind of things can you pass into methods as arguments?
  # you can pass in hashes, arrays, strings numbers and I belive a lot more.
# How can you pass information between methods?
  # you pass information between methods by using parameters. Here you can use parameters to pass in hashes, variables etc. 
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # The concept of parameters and passing information into a method were solidified. It was also cool to see that i can use my methods within each other. I am still weak on my understanding of output and good pseudocoding. 
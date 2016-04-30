#pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # use method to turn this string into an array and add this into hash
# steps: 

  # initialize hash with variable name grocery list with value as quantity
  # set default quantity your_hash.default = 1
  # print the list to the console [use method to iterate through each item and print the item]
# output: [what data type goes here, array or hash?] hash

def create_list(items)
  grocery_list = {}
  arr_list = items.split(' ')
  arr_list.each do |item|
    grocery_list[item] = 1
  end
  return grocery_list
end

grocery_list = create_list("carrots pickles olives")
p grocery_list


# Method to add an item to a list
# input: item name and optional quantity
# steps: use variable name and key as well as assign a value using 
# output: your hash with new item added

def add_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  return grocery_list
end

add_item(grocery_list,"spinach", 2)

# Method to remove an item from the list
# input: 
# steps:
# output:
def delete_item(grocery_list, item) 
  grocery_list.delete(item)
  return grocery_list
end

delete_item(grocery_list, "carrots")
p grocery_list
  
# # Method to update the quantity of an item
# # input:
# # steps:
# # output:
 
def update_item(grocery_list, item, quantity)
   grocery_list[item] = quantity
end

update_item(grocery_list, "pickles", 4)
p grocery_list

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print_list(grocery_list)
  grocery_list.each {|item, key| puts "#{item}, #{key}"}
end

#release 3
new_list = {}
add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)

p new_list

delete_item(new_list, "lemonade")
p new_list

update_item(new_list, "Ice Cream", 1)
p new_list

print_list(new_list)
#pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # use method to turn this string into an array and add this into hash
# steps: 
def create_list(items)
  grocery_list = {}
  #items = "cereal carrots apples"
  arr_list = items.split(' ')
  arr_list.each do |item|
    grocery_list[item] = 1
  end
  p grocery_list
end

grocery_list = create_list("carrots pickles olives")
grocery_list.default = 1
# grocery_list.class

  # initialize hash with variable name grocery list with value as quantity
  # set default quantity your_hash.default = 1
  # print the list to the console [use method to iterate through each item and print the       item]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: use variable name and key as well as assign a value using 
# output: your hash with new item added

def grocery_list({|item, quantity|})
  grocery_list[item] = quantity
  p grocery_list
end

p grocery_list("spinach", 2)

# Method to remove an item from the list
# input: 
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
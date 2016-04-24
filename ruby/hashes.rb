# #Task: entering details of a client preferences - pseudocoding

# #Ask questions to get data on preferences
# 	# :name => "string of first and last name"
# 	# :age => integer
# 	# :num_children => integer
# 	# :num_rooms = = integer
# 	# :decor_theme = "string of any theme"
# 	# :likes_classic = boolean
# 	# :likes_modern = boolean
# #loop so that each client will get their own details recorded -- did not end up doing this.

#initialize a hash to use at a data structure for all of this information
client1 = {}

#Prompting users for information and converting data to the correct data types.
puts "What is your name?"
client1[:name] = gets.chomp

puts "What is your age?"
client1[:age] = gets.chomp.to_i

puts "How many children do you have?"
client1[:num_children] = gets.chomp.to_i

puts "How many rooms are you re-designing?"
client1[:num_rooms] = gets.chomp.to_i

puts "What is your theme?"
client1[:decor_theme] = gets.chomp.downcase

puts "Do you like classic design? (y/n)"
client1[:likes_classic] = gets.chomp
	if client1[:likes_classic] == "y"
		client1[:likes_classic] = true
	else
		client1[:likes_classic] = false
	end

#print hash after all questions answered
puts "Client information"
p client1

# #Give the user the opportunity to update a key, if the user says "none", skip it.
# #but for example if the designer enters "decor_theme" your program should ask for 
# #a new value and update the :decor_theme

puts "Would you like to change any information? (type key word) If you do not want to change anything type none"
answer = gets.chomp.to_sym

	if answer == :name
		puts "new entry for name:"
		client1[answer] = gets.chomp.downcase
	elsif answer == :age
		puts "new entry for age:"
		client1[answer] = gets.chomp.to_i
	elsif answer == :num_children
		puts "new entry for number of children:"
		client1[answer] = gets.chomp.to_i	
	elsif answer == :num_rooms
		puts "new entry for number of rooms:"
		client1[answer] = gets.chomp.to_i
	elsif answer == :decor_theme
		puts "new entry for decor theme:"
		client1[answer] = gets.chomp.downcase
	elsif answer == :likes_classic
		puts "new entry for whether client likes classic design (y/n)"
		client1[answer] = gets.chomp
			if client1[:likes_classic] == "y"
				client1[:likes_classic] = true
			else
				client1[:likes_classic] = false
			end
	else answer == "none"
		puts "Thank you"
	end

#print latest verision of the hash and exit the program
puts "Client information complete"
p client1


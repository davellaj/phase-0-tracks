puts "What is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp.to_i

puts "what year were you born"
DOB = gets.chomp.to_i


valid_input = false
until valid_input
	puts "should we order garlic bread for you? (y/n)"
	likes_garlic = gets.chomp.downcase
		if likes_garlic == "y"
			likes_garlic = true
			valid_input = true
		elsif likes_garlic == "n"
			likes_garlic = false
			valid_input = true
		else
			puts "I didn't understand you"
			valid_input = false
		end
end

valid_input = false
until valid_input
	puts "would you like to enroll in the company's health insurance? (y/n)"
	wants_insurance = gets.chomp.downcase
		if wants_insurance == "y"
			wants_insurance = true
			valid_input = true
		elsif wants_insurance == "n"
			wants_insurance = false
			valid_input = true
		else 
			puts "I didn't understand you"
			valid_input = false
		end
end	

puts "Name: #{name}" 
puts "Age: #{age}"
puts "DOB: #{DOB}"
puts "likes_garlic: #{likes_garlic}"
puts "wants_insurance: #{wants_insurance}"


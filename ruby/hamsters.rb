puts "What is the hamsters name?"
name = gets.chomp.downcase

puts "What is the sqeaky-ness volume level from 1-10 with 10 being the highest pitch squeak"
volume = gets.chomp.to_f

puts "What is the color of the hamster?"
color = gets.chomp.downcase

valid_input = false
until valid_input
puts "Is the hamster a good candidate for adoption? (y/n)"
good_candidate = gets.chomp
	if good_candidate == "y"
		good_candidate = true
		valid_input = true
	elsif good_candidate == "n"
		good_candidate = false
		valid_input = true
	else
		puts "I didn't understand you"
		valid_input = false
	end	
end

puts "What is the hamster's estimated age?"
estimated_age = gets.chomp
	if estimated_age == ""
		estimated_age = nil
	else
		estimated_age.to_i
	end

puts "how many employees will be processed?"
total_employees = gets.chomp.to_i
employee = 1
while employee <= total_employees
	puts "What is your name?"
	name = gets.chomp.downcase

	puts "how old are you?"
	age = gets.chomp.to_i

	puts "what year were you born"
	DOB = gets.chomp.to_i

	if age == 2016 - DOB
		correct_age = true
	else
		correct_age = false
	end

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

	puts "Input for employee #{employee}:"
	puts "Name: #{name}" 
	puts "Age: #{age}"
	puts "DOB: #{DOB}"
	puts "Correct age: #{correct_age}"
	puts "likes_garlic: #{likes_garlic}"
	puts "wants_insurance: #{wants_insurance}"


	if correct_age && (likes_garlic || wants_insurance)
		result1 = true
	else
		result1 = false
	end

	if correct_age == false && (likes_garlic == false || wants_insurance == false)
		result2 = true
	else
		result2 = false
	end

	if correct_age == false && likes_garlic == false && wants_insurance == false
		result3 = true
	else
		result3 = false
	end

	if name == "drake cula" || name == "tu fang"
		result4 = true
	else 
		result4 = false
	end


	puts "Results for employee #{employee}:"
	if result1 == true && result2 == false && result3 == false && result4 == false
		puts "Probably not a vampire"
	elsif result2 == true && result3 == false && result4 == false
		puts "Probably a vampire"
	elsif result3 == true && result4 == false
		puts "Almost certainly a vampire"
	elsif result4 == true
		puts "Definitely a vampire"
	else
		puts "Results inconclusive"	
	end
employee += 1
end
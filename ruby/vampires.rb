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

	allergies = ""
	counter = 1
	#allergy = ""

	until allergies == "sunlight" || allergies == "done"
		puts "Employee alergies: please list one at a time"
		allergies = gets.chomp.downcase
		if allergies == "sunlight"
			allergies
			#allergy_counter = allergies 
			#break
			puts "Results: This employee is allergic to sunlight, probably is a vampire" 
			#allergy += allergies
		elsif allergies == "done"
		else
			allergies
			# I would like to know how to store each allergy in a variable so that I can print
			# the employees allergy but I can not figure it out. I was using allergy += allergies
			# but that was mashing all loop allergy words into one word. 			
		end
		counter += 1
	end


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


	puts "Other Question Results for employee #{employee}:"
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

	puts "Input for employee #{employee}:"
	puts "Name: #{name}" 
	puts "Age: #{age}"
	puts "DOB: #{DOB}"
	puts "Correct age: #{correct_age}"
	puts "likes_garlic: #{likes_garlic}"
	puts "wants_insurance: #{wants_insurance}"
	puts "allergies: #{allergies}"

employee += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


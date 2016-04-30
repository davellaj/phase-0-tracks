# Declare Santa Class and give it three instance methods
class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa Instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end
end

# Initialize a Santa instance and call its methods
# jamie = Santa.new
# jamie.speak
# jamie.eat_milk_and_cookies("chocolate chip")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

list_genders = ["female", "male", "transgender", "unknown"]
list_ethnicities = ["Italian", "French", "Peruvian", "Troll"]

list_genders.length.times do |i|
	santas << Santa.new(list_genders[i], list_ethnicities[i])
end

santas.each do |santa|
	santa.eat_milk_and_cookies("chocolate chip")
	santa.speak
end

p santas
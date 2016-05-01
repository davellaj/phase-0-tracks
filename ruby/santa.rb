# Declare Santa Class and give it three instance methods
class Santa
	attr_reader :age, :reindeer_ranking
	attr_accessor :gender, :ethnicity

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
	
	#add three attribute changing methods to Santa Class
	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(name)
		index = @reindeer_ranking.index(name)
		@reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
		p @reindeer_ranking
	end

	# #setter method to change @gender from outside the class definition
	# def gender=(new_gender)
	# 	@gender = new_gender
	# 	# p @gender
	# end

	# #add two getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

#Initialize a Santa instance and call its methods
jamie = Santa.new("Female", "Italian and French")
jamie.get_mad_at("Rudolph")
jamie.celebrate_birthday
# using age getter in the below puts statement because if I run the celebrate_birthaday method
# again it will increase the age by one again and I don't want to change age again.
puts "this Santa is now #{jamie.age} years old"
 jamie.gender = "Male"
 # will need to add a getter for gender in order to use this new gender assignment in code
 # outside the class, or I can put in the method with parameters to use it in outside code.
 puts "#{jamie.gender} is the new gender"
jamie.age
puts "Again, this Santa's age is #{jamie.age}"
jamie.ethnicity
puts "this Santa's ethnicity is #{jamie.ethnicity}"
p jamie

# #initialize more Santas with specific gender and ethnicity characteristics.
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# list_genders = ["female", "male", "transgender", "unknown"]
# list_ethnicities = ["Italian", "French", "Peruvian", "Troll"]

# list_genders.length.times do |i|
# 	santas << Santa.new(list_genders[i], list_ethnicities[i])
# end

# santas.each do |santa|
# 	santa.eat_milk_and_cookies("chocolate chip")
# 	santa.speak
# end

# santas.each do |santa|
# 	puts "this Santa's ethnicity is #{santa.ethnicity}"
# end

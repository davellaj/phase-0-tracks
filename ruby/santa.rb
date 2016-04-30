# Declare Santa Class and give it three instance methods
class Santa

	def initialize
		puts "Initializing Santa Instance"
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end
end

# Initialize a Santa instance and call its methods
jamie = Santa.new
jamie.speak
jamie.eat_milk_and_cookies("chocolate chip")


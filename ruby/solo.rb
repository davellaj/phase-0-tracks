# Create a class for Broadway star
# set attr_reader experience and age wont be edited outside the class only seen
# set attr_accessor name, voice type, broadway show favorites can be edited outside the program

# Initialize with attributes (have 3 parameters)
# Attributes will be:
	# - years of experience - everyone starts with 0
	# - Broadway show favorites []
		# this will vary
	# - age
		# this will vary
	# - name
		# this will vary
	# - voice type (Tenor, Soprano, Contralto, Baritone, Bass) 
		# this will vary

#Add 3 Methods 
	# Sing loudly(that takes an argument of words and capitalize them)
	# Gain experience - adds 1 to experienceand reassigns value or experience
	# Change preference, Add fav Broadway show
	# change preference, Delete fav broadway show

class Broadway_star
attr_reader :experience, :age
attr_accessor :voice_type, :name, :fav_shows

	def initialize(name, age, voice_type, fav_shows)
		puts "Initializing new instance"
		@name = name
		@age = age
		@voice_type = voice_type
		@experience = 0
		@fav_shows = fav_shows
	end

	def sing_loudly(sing)
		sing.upcase
	end

	def gain_experience
		@experience += 1
	end

	def add_fav_shows(show)
		@fav_shows << show
	end

	def delete_fav_shows(show)
		@fav_shows.delete(show)
	end

	# Print nice so output is more readable
	def print_nice
		puts "------------------------"
		puts "Performer Attributes\nName: #{@name}\nAge: #{@age}\nVoice Type: #{@voice_type}\nFavorite Broadway Shows: #{@fav_shows}\nExperience: #{@experience}"
		puts "------------------------"
	end
end

# User Interface
# User can create as many instances as they would like
# Ask user for each attribute and convert input to appropriate data type.
# store each instance with attributes in an array
# when user finished creating instances, loop through array and print attriutes

performer = []
create_instance = ''
until create_instance == 'n' 
	puts "Do you want to create another instance? (y/n)"
	create_instance = gets.chomp.downcase

	if create_instance == 'n'
		break
	else
		puts "What is the performer's name?"
		name = gets.chomp.capitalize

		puts "What is the performer's age?"
		age = gets.chomp.to_i

		puts "What is the performer's vocal type?"
		voice_type = gets.chomp.capitalize

		fav_shows = []
		broadway_show_input = ""	
		until broadway_show_input == 'done'	
			puts "What are your favorite Broadway shows? List one at a time, when finished type done"
			broadway_show_input = gets.chomp.downcase
			if broadway_show_input == 'done'
				break
			else
			fav_shows << broadway_show_input
			end
		end

	performer << Broadway_star.new(name, age, voice_type, fav_shows)
	end
end

# Print out attributes of each performer
# Had troble making it look nice by
performer.length.times do |i|
	performer[i].print_nice
	end

#test code
# performer = Broadway_star.new("jamie", 28, "soprano")
# p performer.sing_loudly("My heart will go on")
# p performer.gain_experience
# p performer
# p performer.age
# puts "#{performer.name} has #{performer.experience} years of experience"
# performer.gain_experience
# p performer.experience 
# p performer.fav_shows
# performer.delete_fav_shows("Beautiful")
# p performer.fav_shows
# fav_shows = ["the color purple", "lion king"]
# p fav_shows
# Create a class for Broadway star
# set attr_reader 
# set attr_accessor 

# Initialize with attributes (have 3 parameters)
# Attributes will be:
	# - years of experience - everyone starts with 0
	# - Broadway show favorites ["Beautiful", "Les Miserables", "Book of Mormon", "Mama Mia"]
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

Class Broadway_star
attr_reader = :experience, :age
attr_accessor = :voice_type, :name, :fav_shows

	def initialize(name, age, voice_type)
		@name = name
		@age = age
		@voice_type = voice_type
		@experience = 0
		@fav_shows = ["Beautiful", "Les Miserables", "Book of Mormon", "Mama Mia"]
	end
end

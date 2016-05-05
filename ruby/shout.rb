module Shout
	# def self.yell_angrily(words)
	# 	words + "!!!" + " :("
	# end

	# def self.yell_happily(words)
	# 	words + " eeeeeeeeeeeeeee! :)"
	# end

# make mixin verion of the Shout module
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + " eeeeeeeeeeeeeee! :)"
	end
end

# p Shout.yell_angrily("Go Away")
# p Shout.yell_happily("Why hello there")

class Family
	include Shout
end

class Performer
	include Shout
end

mom = Family.new
p mom.yell_angrily("Put your dishes in the dishwasher")

jamie = Performer.new
p jamie.yell_happily("I got the part")
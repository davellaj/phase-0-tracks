module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + " eeeeeeeeeeeeeee! :)"
	end
end

p Shout.yell_angrily("Go Away")
p Shout.yell_happily("Why hello there")
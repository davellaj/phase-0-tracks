# pseudocode a method to take spys name and create a fake name

# declare name in a string: name = "Felicia Torres"
# Create method to swap the first and last name:
	# is there a way to reverse word order on a string? *no
	# make the string an array of words using .split(' ')
	# how do we reverse word order in an array? for this two word name, 
		#.rotate!(count=1) worked as a method on the new array.
		# oh yea, reverse! will also work, I will use this in case future employee have middle names.
	# Make a method to change the vowels to the next vowel
	# make the string an array of individual characters using .split('')
	# use a method that only selects vowels and then does a method similar to .next on each vowel to move it to the next vowel
		# .include? if true do ... can I use the letter code that was in previous exercize? then use .map! to change these vowels to next vowle up?
	# maybe put word back together to start next method of changing consonants
# change the consonant to the next consonant 
	# In the array of characters from the string, figure out how to
	# isolate consonants, or use 'whatever is left' once we take out vowels
	# use .next method
	# Put word back together using .join('')
# at some point you will have to deal with edge values?

# end result should be 'Vussit Gimodoe'
# will you have to use the method to downcase the name at the beginning and then capitalize
# the name again at the end? Will your .next methods work on capital letters?

# swap first and last name
def name_swap(employee)
	# p employee
	name = employee.split(' ')
	# p name
	name.reverse!
	# p name
	spy = name.join(' ')
	# p spy
end

spy = name_swap('Felicia Torres')
# p spy

#Method scramble name: 
# if you can index each letter in the vowel string
# then you can move the index + 1 to get the next vowel.




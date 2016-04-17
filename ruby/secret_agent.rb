#
#define an encrypt method
#   -define index = 0
#   -use .lenth to see how many letters in the string 
#	-loop every letter of a string
#   -	move each letter forward one letter using .next
#   -	create an index to track leters
#   -add an index counter inside method.
# => -Print results

#define a decrypt method
# => -use .length to see how many letters in the string
# => -create a loop to go through every letter
# => -move each letter backwards one letter
# =>       -find index of the letter
# =>       -then access the letter right before it by using subtract operation and storing in variable
# => -print results

def encrypt(str)
	index = 0
	while index < str.length
		puts str[index].next
		index += 1
	end
end

encrypt("zed")

def decrypt(str)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	
	while index < str.length
		decrypt_letter = alphabet.index(str[index])
		puts alphabet[decrypt_letter - 1]
		index += 1
	end
end

decrypt("afe")
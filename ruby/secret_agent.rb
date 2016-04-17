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

# OUR METHOD DECLARATIONS

#encrypts a word by moving each letter forward 1 letter
def encrypt(str)
	index = 0
	word = ""
	while index < str.length
		word += str[index].next
		index += 1
	end
	puts word
end

#encrypt("swordfish")

#this method decrypts a string by moving each letter back a letter
def decrypt(str)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	word = ""
	while index < str.length
		decrypt_letter = alphabet.index(str[index])
		word += alphabet[decrypt_letter - 1]
		index += 1
	end
	puts word
end

#decrypt("zed")

#decrypt(encrypt("swordfish"))
#does not work

#ask user whether they want to decrypt or encrypt a password using puts and gets.chomp
#ask for password using puts and store in variable in gets.chomp
#create loop

# OUR DRIVER CODE 

# ask user whether want encryption or decryption
puts "Would you like to encrypt or decrypt a password (encrypt/decrypt)?"
encryption_type = gets.chomp.downcase

# asks user for a password
puts "What password do you want to use?"
password = gets.chomp.downcase

# runs methods to encrypt or decrypt a password.
if encryption_type == "encrypt"
	encrypt("#{password}")
else encryption_type == "decrypt"
	decrypt("#{password}")
end



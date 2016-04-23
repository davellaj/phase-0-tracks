# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”
# "zom".chop.ljust(4, "om")

"enhance".center(20)
# => "    enhance    "
#enhance".ljust(12).rjust(17)

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" << " suspects"
#=> "the usual suspects"
# phrase = "the usual"
# phrase << " suspects"
# "the usual" + " suspects"
# "the usual".replace "the usual suspects"

" suspects".prepend("the ususal")
# => "the usual suspects"
# " suspects".replace("the usual suspects")

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the  missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
#Elementary,    my   dear        Watson!".squeeze

"z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII or American Standard Code for Information Internchange. This 
# 122 references a lowercase z and is unique and represents this character. 
# the code refers to a set of symbols and characters needed to write texts.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
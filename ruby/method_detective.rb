# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”
"zom".insert(1, "o")
# "zom".chop.ljust(4, "om")

# "enhance".<???>
# => "    enhance    "
#enhance".ljust(12).rjust(17)

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"
# phrase = "the usual"
# phrase << " suspects"
"the usual" << " suspects"
# "the usual" + " suspects"
# "the usual".replace "the usual suspects"

# " suspects".<???>
# => "the usual suspects"
" suspects".prepend("the ususal")

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
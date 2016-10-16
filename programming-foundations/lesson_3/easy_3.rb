# 01: Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 02: How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"
flintstones.push "Dino"
flintstones.concat ["Dino"]

flintstones

# 03:
additional_stuff = %w(Dino Hoppy)
flintstones << additional_stuff
flintstones.push(additional_stuff)
flintstones.concat(additional_stuff)


# 04: Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

a = advice.slice!(/^.+as /)
# alternatively , 
advice.slice!(0, advice.index('house'))

# 05: Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
statement.count('t')

# 06: Back in the stone age (before CSS) we used spaces to align things on the screen. 
# If we had a 40 character wide table of Flintstone family members, 
# how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
title.center(40)
















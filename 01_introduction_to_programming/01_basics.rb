# 01 : Add two strings together that, when concatenated, return your first and last name as your full name in one string.

string_1 = "Neha"
string_2 = "Tandon"

concatenated_string = string_1 + string_2
puts concatenated_string

# 02: Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place
# 2) hundreds place
# 3) tens place
# 4) ones place 

n = 1234
thousands = n / 1000
hundreds = n % 1000 / 100
tens = n % 100 / 10
ones = n / 10


# 03: Write a program that uses a hash to store a list of movie titles with the year they came out. 
# Then use the puts command to make your program print out the year of each movie to the screen. 
# The output for your program should look something like this.  
 
 movie_list = {"Lord of the rings" => 2000 , "The Hobbit" => 2001 , "The Gladiator" => 2002}

 puts movie_list["Lord of the rings"]
 puts movie_list["The Hobbit"]
 puts movie_list["The Gladiator"]


# 04: Use the dates from the previous example and store them in an array. 
# Then make your program output the same thing as exercise 3.

dates = [2000, 2001, 2002, 2003]

puts dates[0]
puts dates[1]

# 05: Write a program that outputs the factorial of the numbers 5, 6, 7, and 8

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1


# 06: Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

output_1 = 3.12 * 3.12
output_2 = 2.2 * 2.2
output_3 = 1.1 * 1.1

# 07: What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# It is a syntax error where expected expression was '}' and it found ')' in the second line. User forgot to close it.

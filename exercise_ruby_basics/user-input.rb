# 01: Write a program that asks the user to type something in, after which your program should simply display what was entered.
input = gets.chomp
puts input

# 02: Write a program that asks the user for their age in years, and then converts that age to months.

age = gets.chomp.to_i
age_in_months = age * 12
puts age_in_months

# 03: Write a program that asks the user 
# whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.
puts "Do you want me to print something? (y/n)"
response = gets.chomp
puts 'something' if response == 'y'

# 04: In the previous exercise, you wrote a program that asks the user if they want the program to print "something".
# However, this program recognized any input as valid: if you answered anything but y, it treated it as an n response,
# and quit without printing anything.
# Modify your program so it prints an error message for any inputs that aren't y or n, and then try again.
# In addition, your program should allow both Y and N (uppercase) responses;
# case sensitive input is generally a poor user interface choice.
# Whenever possible, accept both uppercase and lowercase inputs
puts "Do you want me to print something? (y/n)"
response = gets.chomp
if response == 'y' || response == 'yes' || response == 'Y' || response == 'Yes' || response == 'YES'
  puts 'something' 
elsif response == 'n' || response == 'N' || response == 'NO' || response == 'No' || response == 'no'
else
  puts "Invalid input! Not a valid response."
end

# Alternate Solution: 
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

# 05: Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. 
# The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number; 
# validation of numeric input is a topic with a fair number of edge conditions that are beyond the scope of this exercise.

puts "Enter number of lnes you want, minimum is 3"
answer = gets.chomp.to_i
  if answer >= 3
    while answer > 0 
      puts "Launch School is the best"
      answer -=1
    end
  end

# 06: Write a program that displays a welcome message, but only after the user enters the correct password,
# where the password is a string that is defined as a constant in your program.
# Keep asking for the password until the user enters the correct password.

Password = 'SeCRET'


loop do
  puts "Enter the password"
  answer = gets.chomp
  break if answer == Password
  puts "Wrong Password, try again!"
end

puts "Successfull"

# 07: In the previous exercise, you wrote a program to solicit a password. 
# In this exercise, you should modify the program so it also requires a user name.
# The program should solicit both the user name and the password, then validate both, 
# and issue a generic error message if one or both are incorrect;
# the error message should not tell the user which item is incorrect.

Pseudo Code :
1. Store Username, Password in constants
2. Ask User input
3. If Statements to check with && conditions
4. Print Authentication Failed


Password = "test123"
Username = 'neha'

loop do
  puts "Enter the username"
  username = gets.chomp
  puts "Enter the password"
  password = gets.chomp
  break if password == Password && username == Username
  puts "Authentication failed"
end

puts "Successfull"

# 08: Write a program that obtains two Integers from the user, 
# then prints the results of dividing the first by the second.
# The second number must not be 0, and both numbers should be validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# This method returns true if the input string can be converted to an Integer 
# and back to a string without loss of information, false otherwise. 
# It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail,
# but it is sufficient for this exercise.

number1 = nil
loop do 
  puts "Enter numberator :"
  number1 = gets.chomp
  break if valid_number?(number1)
end

number2 = nil
loop do
  puts "Enter denominator :"
  number2 = gets.chomp
  if number2 == 0
    puts "0 not allowed" 
  else
    break if valid_number?(number2)
  end
end
  
result = number1.to_i/number2.to_i
puts result


# 09: In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly
# until a certain number of lines have been printed. Our solution looked like this:
  #   number_of_lines = nil
  # loop do
  #   puts '>> How many output lines do you want? Enter a number >= 3:'
  #   number_of_lines = gets.to_i
  #   break if number_of_lines >= 3
  #   puts ">> That's not enough lines."
  # end

  # while number_of_lines > 0
  #   puts 'Launch School is the best!'
  #   number_of_lines -= 1
  # end
# Modify this program so it repeats itself after each input/print iteration,
# asking for a new number each time through. The program should keep running until the user enters q or Q.

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:(q for Quit)'
  number_of_lines = gets.chomp
  break if number_of_lines == 'q'
  break if number_of_lines < 3
 
  number_of_lines.to_i.times do
   puts 'Launch School is the best!'
   end
end

puts "Thank You"

# 10: Write a program that requests two integers from the user, adds them together, and then displays the result.
# Furthermore, insist that one of the integers be positive, and one negative;
# however, the order in which the two integers are entered does not matter.
# Do not check for positive/negative requirement until after both integers are entered,
# and start over if the requirement is not met.
# You may use the following method to validate input integers:


first = nil
second = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts 'Invalid input'
  end
end
loop do
  first= read_number
  second = read_number
  break if (first * second) <0
  puts "please retry"  
end  

result = first + second



























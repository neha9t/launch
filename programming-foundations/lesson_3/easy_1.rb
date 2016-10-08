# 01: What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers

# As #uniq is not a bang method, the original array of numbers will be printed.
 # as puts convert to_s that's the reason output was in string
# Solution:
 1
 2
 2
 3

# 02: Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

  # what is != and where should you use it?
  # put ! before something, like !user_name
  # put ! after something, like words.uniq!
  # put ? before something
  # put ? after something
  # put !! before something, like !!user_name

  # ! signifies "not" and ? signifies "asking and response will be in boolean true or false"


# what is != and where should you use it?
Solution: != means "not equal to" ; can be used when we want to check if certain variable value is "not equal to" something.

# put ! before something, like !user_name
Solution: Given that user_name is a variable , !user_name when used in if statement:
By default : if user_name signifies true ; if !user_name signifies to "false"

# # put ! after something, like words.uniq!
Solution: Here ! is bang method as it is used with a method to change the nature of method 
which changes the original object on which its called.

# put ? before something

# put ? after something

# put !! before something, like !!user_name
not(not(true)) = true


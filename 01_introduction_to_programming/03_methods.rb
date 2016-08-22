# say.rb
puts "hello"
puts "hi"
puts "how are you"
puts "I am fine"


def say(words="hello") 
  puts words + "."
end

say("hi")
say("hello")
say("how are you")
say("I am fine")


def method_name(number)
  number = 7
end

a = 5
method_name(a)
puts a

# Example of a method that modifies its argument permanently
# mutate.rb

a = [1,2,3]

def mutate(array)
  array.pop
end

p "Before: #{a}"
mutate(a)
p "After: #{a}"

# return.rb

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value


# 01: Write a program that prints a greeting message. 
# This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  p "Message is : #{name}"
end

greeting("Hi")

# 02: What do the following expressions evaluate to?
# 1. x = 2 
# Solution: 2 is assigned to the variable 'x' . it is an Integer

# 2. puts x = 2
# Solution: the printed value is 2 which will be a String. returned value will be nil as 'puts' is used

# 3. p name = "Joe"
# Solution: Printed value will be a String "Joe" and the returned value will also be a "String"


# 4. four = "four"
# Solution:  The variable 'four' contains a String named "four"

# 5. print something = "nothing"
# Solution: Returned value is "nil" 


# 03: Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  product = a * b
end

multiply(2,3)

# 04: What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# solution : Nothing will be printed as after 'return keyword, no statement is evaluated.


# 05: 1) Edit the method in exercise #4 so that it does print words on the screen. 
#     2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
# Solution: 1. removed 'return' keyword
# 2. nil as puts is used.

# 06: What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product`
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>`

  # Solution : 

# There is adeclared method called 'calculated_product' which takes 2 arguments 
# for which the supplied arguments were found only 1 instead of 2 










































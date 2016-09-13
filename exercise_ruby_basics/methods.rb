# 01: Write two methods, one that returns the string "Hello" and one that returns the string "World".
# Then print both strings using #puts, combining them into one sentence.

def hello
  s = "Hello"
end

def world
  x = " World"
end

puts hello + world 

# 02: Write a method named greet that invokes the following methods:

def say_hello
  'Hello'
end

def say_world
  'World'
end

# When greet is invoked with #puts, it should output the following:
# Hello World
# Make sure you add a space between "Hello" and "World", however, you're not allowed to modify say_hello or say_world.

def greet
  say_hello + ' ' + say_world
end

# 03: Using the following code,
# write a method called car that takes two arguments and prints a string containing the values of both arguments.
car('Toyota', 'Corolla')
# Expected output:
# Toyota Corolla
def car(first,second)
  first_name = first
  second_name = second

  first_name + ' ' + second_name
end

# 04: The variable below will be randomly assigned as true or false.
# Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true
# and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.
def time_of_day(input)
  if input
    puts "It's a daytime"
  else
    puts "It's nighttime"
  end
end
time_of_day(daylight = [true, false].sample)

# 05: Fix the following code so that the names are printed as expected.
def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."

# Solution: 
def dog(name)
  name
end

def cat
  'Ginger'
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."

# 06: Write a method that accepts one argument, but doesn't require it.
# The parameter should default to the string "Bob" if no argument is given.
# The method's return value should be the value of the argument.
puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'
# The code should output true twice.

def assign_name(input='Bob')
  input
end

# 07: Write the following methods so that each output is true
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

def add(input1,input2)
  input1+input2
end

def multiply(input1,input2)
  input1 * input2
end

# 08: The variables below are both assigned to arrays.
# The first one, names, contains a list of names.
# The second one, activities, contains a list of activities.
# Write the methods name and activity so that they each take the appropriate array and return a random value from it.
# Then write the method sentence that combines both values into a sentence and returns it from the method.
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
# Example output :
George went walking today!

def name(input)
  input.sample
end

def activity(input)
  input.sample
end
def sentence(input1,input2)

  "#{input1} went #{input2} today!"

end

puts sentence(name(names), activity(activities))

# 09: Write a method named print_me that prints "I'm printing within the method!" when invoked.

def print_me
  puts "I am printing within the method"
end

# 10: Write a method named print_me that returns "I'm printing the return value!" when using the following code.

def print_me
  "I am printing return value"
end

puts print_me


















































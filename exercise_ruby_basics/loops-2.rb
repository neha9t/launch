# 01: Write a loop that prints numbers 0-5 and whether the number is even or odd. Use the code below to get started.
count = 1

loop do
  count += 1
end
# Expected output:
  # 1 is odd!
  # 2 is even!
  # 3 is odd!
  # 4 is even!
  # 5 is odd!
# Solution: 
count = 1
loop do 
    if count.odd?
      puts "#{count} is odd!"
    elsif count.even?
      puts "#{count} is even!"
    end
  count = count + 1
  break if count > 5
end

# 02: Modify the following code so that the loop stops if number is between 0 and 10.

loop do
  number = rand(100)
  puts number
end
# Solution :

loop do
  number = rand(100)
  break if ((number > 0) && (number < 10))
  puts number
end
# other interesting solutions
loop do
  number = rand(100)
  puts number
  break if (1..10).include?(number)
end

loop do
  number = rand(100)
  puts number

  if number.between?(0, 10)
    break
  end
end

# 03: Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. 
# Print "The loop wasn't processed!" if process_the_loop equals false.

process_the_loop = [true, false].sample

loop do 
  if process_the_loop == true
    puts "The loop was processed!"
  else process_the_loop == false
    puts "The loop wasn't processed!"
  end
  break
end

# 04: The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer.
# Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. 
# Print "Wrong answer. Try again!" if the user's answer doesn't equal 4
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's Correct"
    break
  else
    puts "Wrong answer. try Again"
  end
end

# 05: Modify the code below so that the user's input gets added to the numbers array. 
# Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
end
puts numbers
# Solution : 
numbers = []

loop do
  break if numbers.size == 5
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input  
end
p numbers


# Other solutions: 
# numbers << input.to_i if input.to_i.to_s == input

# 06: Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', nil, 'Henry']
# Keep in mind to only use loop, not while, until, etc.

loop do
element = names.pop
puts element
break if names.empty?
end

# 07: The method below counts from 0 to 4. 
# Modify the block so that it prints the current number and stops iterating when the current number equals 2.
5.times do |index|
  puts index
  break if index == 2
end

# 08: Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  puts number
end
# Solution:
number = 0
until number == 10
  number += 1
   next if number.odd?
    puts number
  end
end

# Exploration: Why did next have to be placed after the incrementation of number and before #puts?
# Solution: it will never get incremented soon after the first number is encountered.

# 09: The following code increments number_a and number_b by either 0 or 1. 
# loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration.
# Use next to modify the code so that the loop iterates until either number_a or number_b equals 5.
# Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_b == 5 || number_a ==5
    puts "5 was reached"
  else 
    next
  end
  break
end


# alternate solution:

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_b == 5 || number_a ==5
    puts "5 was reached"
  break
end

# 10: Given the code below, use a while loop to print "Hello!" twice.
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

i = 0
while i< number_of_greetings do
  greeting
  i +=1
end






























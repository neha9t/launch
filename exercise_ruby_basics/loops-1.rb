# 01 : The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. 
# This loop isn't useful in a real program, though. Modify the code so the loop stops after the first iteration.
loop do
  puts 'Just keep printing...'
end

# Solution: 
loop do
  puts 'Just keep printing...'
  break
end

# 02: The code below is an example of a nested loop. 
# Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'


# Solution : 
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# 03: Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break 
end

# Solution:
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
   break if iterations > 5
  iterations = iterations + 1 
  break if iterations > 5
end

loop do
  puts "Number of iterations = #{iterations}"
   break if iterations == 5
  iterations = iterations + 1 
end

# 04: Modify the code below so the loop stops iterating when the user inputs 'yes'.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
# Solution:
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  if answer == 'yes' || answer == 'Yes' || answer == 'YES' || answer == 'Y' || answer == 'y'
    break
  end
end

# 05: Modify the code below so "Hello!" is printed 5 times
say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end
#Solution: 

say_hello = 1

while say_hello
  puts 'Hello!'
  break if say_hello ==5
  say_hello = say_hello+1
end

say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count = count + 1
  say_hello = false if count ==5
end

# 06: Using a while loop, print 5 random numbers between 0 and 99. 
# The code below shows an example of how to begin solving this exercise.
numbers = []

while <condition>
  # ...
end
# Example output (your numbers will most likely be different):

  # 62
  # 96
  # 31
  # 16
  # 36

numbers = []
while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# 07: The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 10

until count == 0
  puts count
  count -= 1
end
# Solution:
count = 1

until count == 11
  puts count
  count += 1
end

# 08: Given the array of several numbers below, use an until loop to print each number

# Expected output:
    # 7
    # 9
    # 13
    # 25
    # 18

numbers = [7, 9, 13, 25, 18]

i = 0
until i == numbers.size do
puts numbers[i]
i = i + 1
end

# 09: The code below shows an example of a for loop.
# Modify the code so that it only outputs i if i is an odd number.
for i in 1..100
  puts i if i.odd?
end


# 10: Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']
# Expected output:

  # Hello, Sarah!
  # Hello, John!
  # Hello, Hannah!
  # Hello, Dave!
for i in friends
  puts "Hello, #{i}"
end


































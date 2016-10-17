# 01:Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

# 02: Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
ex:

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

hsh = Hash.new(0)
statement.each_char do |char|
  char_count = statement.count(char) 
    hsh[char] = char_count unless char == ' '
  end 
end

or 

array = statement.split(//)
hsh = Hash.new(0)
array.each do |arr|
  if array.include?arr
    hsh[arr]+=1
  end
end


# 03: The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
# Solution
# concatenating a string and integer.
puts "the value of 40 + 2 is " + (40+2).to_s
puts "the value of 40 + 2 is #{(40+2)}"

# 04: What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# 1 3 
[3,4]


# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1 2
[1,2]

#Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
#Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

#Bonus 1

#What is the purpose of the number % dividend == 0 ?

#Bonus 2

#What is the purpose of the second-to-last line in the method (the divisors before the method's end)?























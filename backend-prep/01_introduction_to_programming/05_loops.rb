# 01: What does the each method in the following program return after it is finished executing?
# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end
# Solution : [2, 3, 4, 5, 6] 

# 02: Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". 
# Each loop can get info from the user.

# Solution: 
while (x != 'STOP') do
  puts "Enter Info"
  input = gets.chomp
  puts "more info?"
  x = gets.chomp
end

# 03: Use the each_with_index method to iterate through an array of your creation 
# that prints each index and value of the array.

array = ['apple', 'orange', 'pear', 'melon']

array.each_with_index do |val, index|
  puts "Index is : " 
  puts index
  puts "and the value is #{val}"
end


# 04: Write a method that counts down to zero using recursion.

def countdown(number)
  number
  if(number >=0)
    puts number
    countdown(number -1)
  end
end

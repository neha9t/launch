# 01: How would you use String#upcase to create an uppercase version of the string "xyz"?
new_string = xyz.upcase

# 02: Assume you have this Array: How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?
a = %w(a b c d e)
a.insert(3, 5,6,7)

# 03: Assume you have the following code:
# What will each of the 3 puts statements print?
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect # ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
puts s.split(',').inspect # ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
puts s.split(',', 2).inspect # ["abc def ghi", "jkl mno pqr,stu vwx yz"]


# 04: Assume you have the following code:
# What will each of the 4 puts statements print?

require 'date'

puts Date.new # -4712-00-00
puts Date.new(2016) # 2016 -00-00
puts Date.new(2016, 5)# 2016-05-00
puts Date.new(2016, 5, 13) # 2010-05-13


# 05: The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. 
# Assume you have the following code
a = [1, 4, 8, 11, 15, 19]
# How would you search this Array to find the first element whose value exceeds 8?
# Hint: faster than find and select : bsearch, uses binary search
x = a.bsearch{|x| x>8}
puts x

# 06: What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7) # IndexError : array out of bounds
puts a.fetch(7, 'beats me') # return the default value = beats me; as the index asked doesnt exist
puts a.fetch(7) { |index| index**2 } # as index again doesn't exist, now it can execute the block and return : 49

# 07: What does this code print?
5.step(to: 10, by: 3) { |value| puts value }
# 5 and 8 
# Step will put a loop where 'by' is the value to be incremented with and 'to' is the limit . first iteration will take value as 5 on which step is 
# run and puts 5 and second will return 8(5+3) ..last iteration will return 11 which is greater than the limit so the loop will quit.

# 08: Use irb to run the following code:
s = 'abc'
puts s.public_methods.inspect
# You should find that it prints a list of all of the public methods available to the String s; 
# this includes not only those methods defined in the String class, 
# but also methods that are inherited from Object (which inherits other methods from the BasicObject class and the Kernel module). 
# That's a lot of methods.

# How would you modify this code to print just the public methods that are defined or overridden by the String class?
#  That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

s.public_methods(false).inspect # false: check public methods for the reason in Object Class.

# 09: Use irb to run the following code:
# Find the documentation for the #min method and modify the above program to print the two smallest values in the Array.
a = [5, 9, 3, 11]
puts a.min
# Solution: 
a = [5, 9, 3, 11]
puts a.min(2)




# 10: In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. 
# We do this with YAML::load_file:
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# Find the documentation for YAML::load_file

# Solution: http://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file






























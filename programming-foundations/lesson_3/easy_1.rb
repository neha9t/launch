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
! signifies "not" and ? signifies "asking and response will be in boolean true or false"

# what is != and where should you use it?
#Solution: != means "not equal to" ; can be used when we want to check if certain variable value is "not equal to" something.

# put ! before something, like !user_name
#Solution: Given that user_name is a variable , !user_name when used in if statement:
#By default : if user_name signifies true ; if !user_name signifies to "false"

# # put ! after something, like words.uniq!
# Solution: Here ! is bang method as it is used with a method to change the nature of method 
# which changes the original object on which its called.

# put ? before something
# error when used with a variable

# put ? after something
# error when used with a variable

# put !! before something, like !!user_name
not(not(true)) = true


# 03: Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!(/\bimportant\b/,"urgent")

# 04: The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # will delete value at index 1 i.e = 2
numbers.delete(1) # will target deleting the first value: i.e 1

# 05: Starting with the string:
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
Way 1: famous_words.prepend("Four score and ")
Way 2: famous_words.insert(0, "Four score and " )
Way 3: "Four score and " << famous words
Way 4: "Four score and " + famous_words

# 06: eval 
42

# 07: If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
# Solution: 
flintstones.flatten!

# 08: flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

#Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.select{|k,v| k == "Barney"}.to_a
# or 
flintstones.assoc("Barney")

#09: Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

f_hash = {}
flintstones.each_with_index do |key, index|
  f_hash[key] = index
end






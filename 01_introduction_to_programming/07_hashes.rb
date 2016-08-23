# 01: Given a hash of family members, with keys as the title and an array of names as the values, 
 # use Ruby's built-in select method to gather only immediate family members' names into a new array.

 family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

close_family_hash = family.select do |key,value|

  (key ==sisters) || (key == brothers)

end

close_family_hash.values.hash

# 02: Look at Ruby's merge method. 
# Notice that it has two versions. What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.

h1 = {fruit: 'apple', furniture: 'chair', sky: 'blue'}
h2 = {single: 'ones', sky: 'blue'}

h3= h1.merge(h2) # original arrays will not get changed.
h3 = h1.merge!(h2) # h1 will also be changed



# 03: Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

hash = {one: 1, two: 2, three: 3, four: 4, five: 5, six: 6}

hash.each_key {|key| puts key}
hash.each_value {|value| puts value}
hash.select {|key, value| puts "#{key}  #{value}"}

# 04 : Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

#05: What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.has_value?("web developer")


# 06: 
# Given the array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order. 
# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)





# 07: Given the following code...

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?





#08: If you see this error, what do you suspect is the most likely problem?
NoMethodError: undefined method 'keys' for Array

A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.









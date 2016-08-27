# 01: Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|
  puts num
end

# 02: Same as above, but only print out values greater than 5.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|
  puts num if num >5
end

# 03: Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_numbers= numbers.select do |num| 
  if num.odd?
    num
  end
end

p new_numbers

# 04: Append "11" to the end of the original array. Prepend "0" to the beginning.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.unshift(0)
numbers.push(11)
p numbers

# 05: Get rid of "11". And append a "3".

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
numbers.pop(1)
numbers.push(3)
p numbers

# 06: Get rid of duplicates without specifically removing any one value.

numbers.uniq!

# 07: What's the major difference between an Array and a Hash?

# Solution: Array is ordered index, Hash is key-value paired index

# 08: Create a Hash using both Ruby syntax styles.

number_sys = {one: 1, two: 2, three: 3, four: 4, five: 5}
number_sys_old = {one => 1, two => 2, three => 3, four => 4, five => 5}

# 09: Suppose you have a hash h = {a:1, b:2, c:3, d:4}
  # 1. Get the value of key `:b`.

  # 2. Add to this hash the key:value pair `{e:5}`

  # 3. Remove all key:value pairs whose value is less  
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e]= 5
h.delete_if{|k,v| v <3.5} # {d: 4}


# 10: Can hash values be arrays? Can you have an array of hashes? (give examples)

values_as_arrays = {apples: [1,2,3], oranges: [2,3,4]}
array_of_hashes = [ {two: 2}, {thee: 3} ]

# 11: Look at several Rails/Ruby online API sources and say which one you like best and why.

# 12: Given the following data structures. 
# Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [ ["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"] ]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }

# Previous Try:
#contacts["Joe Smith"] = contact_data[0]
#contacts["Sally Johnson"]=contact_data[1]

# Corrected:
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13: Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?


contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]


# 14: In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 12, 
# and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
#  and some helpful methods might be the Array shift and first methods.
# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.





# 15: Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
 arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr.delete_if {|a| a.start_with?("s") }
arr.delete_if {|a| a.start_with?("s", "w") }


# 16: Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
# Look into using Array's map and flatten methods, as well as String's split method.
x = a.map do |i|
  i.split(" ")
  end
  x.flatten


# 17: What will the following program output?


hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Solution : "These hashes are not the same!"
# So as order doesn't matter, corrected answer is : They are same!












































# 01: Where can you find the most complete Ruby documentation?
# Solution: http://ruby-doc.org/

# 02: Search for documentation of 'while' loop
# https://ruby-doc.org/core-2.2.0/doc/syntax/control_expressions_rdoc.html#label-while+Loop
# Core API--> Selecting 'doc/syntax/control_expressions.rdoc' under Files

# 03: Using the ruby documentation, determine what value a while loop returns.
#  nil
# Example : 
a = 0
b = while a < 10 do
  p a
  a += 1
end 
p b

# 04: In the previous exercise, you learned that the while loop returns nil unless break is used.
# Locate the documentation for break, and determine what value break sets the return value to for the while loop.

# 05: Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.
# http://ruby-doc.org/core-2.3.1/doc/syntax/literals_rdoc.html

# 06: Using the ruby documentation, determine how you would write a Symbol that represents your name.
# We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.
# :NehaTandon


# 07: Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# Use the ruby documentation to determine what this code will print.

# Solution : http://ruby-doc.org/core-2.3.1/doc/syntax/methods_rdoc.html#label-Default+Values

# It will return the default values

# 08: Lets move on now to the documentation you will use most often; the core API section on Classes and Modules. 
# All of these are listed under Classes on the Core API page.
# Locate and open the class documentation for the String class.

# Solution: Core Classes-> String: http://ruby-doc.org/core-2.3.1/String.html

# 09: Use the ruby documentation for the String class to determine which method can be used to right justify a String object.
# Solution : http://ruby-doc.org/core-2.3.1/String.html#method-i-rjust

# 10: Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path is class method
# File#path is instance method


























# pseudocode

# an example of some pseudo-code for a method that determines which number is greatest in a collection.

# write out pseudo-code (both casual and formal) that does the following:

# a method that returns the sum of two integers
# a method that takes an array of strings, and returns a string that is all those strings concatenated together
# a method that takes an array of integers, and returns a new array with every other element
# No need to code here, just practice writing logic out in English.


# ________________

# a method that returns the sum of two integers

# Casual:

# 1. pass 2 integers into the method
# 2. In the method, Add the 2 integers
# 3. end the method
# 4. Outside the method, print the method


# Formal :
# START

  # DEFINE a METHOD
    # START OF METHOD
      # READ number1
      # READ number2
      # number1+number2
    # END OF METHOD
  # PRINT METHOD

  # END

  # EXECUTE METHOD(number1,number2)

# END

# ____________________

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# Casual:

# 1. Declare an array with strings
# 2. use the array method named #join to combine each string for a single string
# 3. Save the String in a varible
# 4. print the variable.

# Formal:

# START
  
  # SET array_of_strings
  # SET new_array = array_of_strings.join
  # PRINT new_array

# END

# ___________________

# a method that takes an array of integers, and returns a new array with every other element
# [1,2,3,4,5] ==> [1,3,5]

# Casual

# delcare an integer array
# iterate over a loop where we can check if index is divisble by 2 and remainder is zero
# if it is then we can push it into a diff array
# end the loop
# print the array


# Formal:
# START

  # SET array_of_integers
  # SET empty_array
  # WHILE index < array_of_integers.length
    # IF index % 2 ==0
    # SET empty_array << value_in_index
    # END
  # PRINT empty_array
# END
a = [1,2,3,4,5,6,7]
b = []
 a.each_with_index do |s, i|
    if (i%2 == 0)
      b << s
    end
  end
puts b










































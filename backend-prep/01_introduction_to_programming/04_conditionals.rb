# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

puts  false ? "this is true" : "this is not true"


# case_statement.rb

a = 5
answer = case
when a ==5
  "a is 5"
when a==6
  "a is 6"
else
  " neither nor"
end

puts answer


# 01: Write down whether the following expressions return true or false. 
# 1. (32 * 4) >= 129 # Solution: false
# 2. false != !true # Solution: false
# 3. true == 4 # SOlution: false
# 4. false == (847 == '874') # Solution : true
# 5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # Solution : true

# 02: Write a method that takes a string as argument. 
# The method should return the all-caps version of the string, only if the string is longer than 10 characters. 
# Example: change "hello world" to "HELLO WORLD". 
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def capital(input)
  if input.to_s.length > 10
    input.upcase
  else
    puts "Please enter greater than 10 characters"
  end
end

capital("hello")


# 03: Write a program that takes a number from the user between 0 and 100 and 
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.


def check_range(a)
  answer = case 
  when (0 < a) && (a<= 50)
    "Number is between 0 to 50"
  when (51 < a) && (a <= 100)
     "Number is between 51 to 100"
  when (100 < a )
    "Number is above 100" 
  else
     "invalid" 
  end
  answer
end
  puts "Enter a number : "
  a = gets.chomp.to_i
  answer = check_range(a)
  puts answer


# 04: What will each block of code below print to the screen? 
# Write your answer on a piece of paper or in a text editor and 
# then run each block of code to see if you were correct.

# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")

# Solution: puts ("FALSE")

# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end

# Solution:  Did you get it right?


# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end

# Solution : ALRIGHT NOW!

# 05: Rewrite your program from exercise 3 using a case statement. 
# Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. 
# Make sure they both still work.

# 06: When you run the following code...

def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
    end

equal_to_four(5)

# You get the following error message..

# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it?

# Solution: No 'end' for method. there should be 2 end statement to mark the end for if-else and method




















# 01: What will the following code print and why? Don't run the code until you have tried to answer.
a = 7

def my_value(b)
  b += 10   # b = 17
end

my_value(a) # 7 is passed
puts a     # 17
# Solution: 7

# 02: What will the following code print, and why? Don't run the code until you have tried to answer.
a = 7

def my_value(a)
  a += 10     # a = 17
end

my_value(a) # 7
puts a # 7
# Solution: 7

# 03: What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b     # b = a = 12
end

my_value(a + 5)
puts a
# Solution: 7

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-' # Xy-zy
end

my_value(a) 
puts a # Xy-zy

# 05: What will the following code print, and why? Don't run the code until you have tried to answer.
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a # Xyzzy

# 06: What will the following code print, and why? Don't run the code until you have tried to answer.
a = 7

def my_value(b)
  b = a + a 
end

my_value(a)
puts a      # undefined local variable a


# 07: What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a # 3

# 08: What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a


# 09 : What will the following code print, and why? Don't run the code until you have tried to answer.
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a # 7 (shadowing)

# 10: What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# Solution: will issue an error




























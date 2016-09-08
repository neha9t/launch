# 01:What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  return 'Breakfast'
end

puts meal

# Solution: Breakfast. the method returns "breakfast" string

# 02: What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  'Evening'
end

puts meal

# solution: 'Evening'. return is not used but the last sentence of code is 'Evening' so return value is 'Evening'

#03: What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# Solution: Breakfast. as soon as return is encountered, it returns the value and exits without further looking into code.

# 04: What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Solution: Dinner
            Breakfast

# As there are 2 puts statements that's why dinner and breakfast both get printed.

# 05: What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# Solution: return value of "puts 'Dinner'" is nil.
#Dinner and then nil both will be printed

# 06: What will the following code print? Why? Don't run it until you've attempted to answer.
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# Solution: Breakfast

# 07: What will the following code print? Why? Don't run it until you've attempted to answer.
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Solution: 
# 0, 1, 2, 3, 4

# Edit: #times method returns the integer used which is 5. that's the reason 5 is the return value of #times method.
# so Answer is 0,1,2,3,4,5

# 08: What will the following code print? Why? Don't run it until you've attempted to answer.
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
# Solution: 0,1,2,3,4,10
# 5 will not be printed as #times method is not the last line.

# 09: What will the following code print? Why? Don't run it until you've attempted to answer.
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# Solution: 0,1,2, nil

# As soon as return is encountered, the value given to return will be returned. here there is no value given to return that's why 'nil' is printed

# 10: What will the following code print? Why? Don't run it until you've attempted to answer.
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# Solution: return value will be 1. as the first condition will be true and it won't land on else part.




















































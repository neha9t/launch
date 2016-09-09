# 01: Create a hash that contains the following data and assign it to a variable named car.
car = {type: 'sedan', color: 'blue', mileage: 80_000}

# 02: Using the code below, add the key :year and the value 2003 to car.
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003
puts car

# 03: Using the following code, delete the key :mileage and its associated value from car.

car.delete(:mileage)

# 04: Using the following code, select the value 'blue' from car and print it with #puts
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]

# 05: Use Hash#each to iterate over numbers and print each element's key/value pair.
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key,value|

  puts "A #{key} number is #{value}"
end

# 06: Use Hash#map to iterate over numbers and return an array containing each number divided by 2.
# Assign the returned array to a variable named half_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
# Expected Output :
[50, 25, 5]

half_numbers = numbers.map do |key, value|
                value/2 
              end

p half_numbers

# 07: Use Hash#select to iterate over numbers and
# return a hash containing only key-value pairs where the value is less than 25.
# Assign the returned hash to a variable named low_numbers and print its value using #p.
numbers = {
  high:   100,
  medium: 50,
  low:    10
}
# Expected output:
{low: 10}

low_numbers  = numbers.select do |key,value|
      if value < 25
        value
      end
    end

p low_numbers

# 08: In the following code, numbers isn't mutated because #select isn't a destructive method.
# However, there is a destructive version of #select named #select!.
# Modify the code so that #select mutates numbers.
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.select! do |key, value|
                 value < 25
               end


p numbers

# Further Exploration: No the Assignment to a a different variable is not needed.

# 09: Create a nested hash using the following data.
    # Car

    # type  color year
    # sedan blue  2003

    # Truck

    # type  color year
    # pickup  red 1998

car = {type: 'sedan',color: 'blue',year: 2003}
truck = {type:'pickup',color:'red',year: 1998}

new_hash = {car: {type: 'sedan',color: 'blue',year: 2003},
             truck: {type:'pickup',color:'red',year: 1998}}

# 10: Rewrite car as a nested array containing the same key-value pairs.
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[type: ,'sedan'],[color:, 'blue'],[year:, 2003]]



























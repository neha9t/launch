# Build a command line calculator program that does the following:

#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result

Kernel.puts("Welcome to command-line simple calculator")

Kernel.puts("Enter the first number")
number1 = Kernel.gets().chomp()

Kernel.puts("Enter the second number")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation do you want to do 1) Addition, 2) Substraction, 3) Multiplication or 4) Division")
operation = Kernel.gets().chomp()

result = if operation == '1'
  number1.to_i() + number2.to_i()
elsif operation == '2'
  number1.to_i() - number2.to_i()
elsif operation == '3'
  number1.to_i() * number2.to_i()
else
  number1.to_f() / number2.to_f()
end

Kernel.puts(result)


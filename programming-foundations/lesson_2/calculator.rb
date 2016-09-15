# Build a command line calculator program that does the following:

#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
   'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to command-line simple calculator. Enter your Name: ")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Please enter a valid name")
  else
    break
  end
end

prompt("Hi #{name} !!")

loop do # main loop
  number1 = ''
  loop do
    prompt("Enter the first number")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That's an invalid number, Try Again!")
    end
  end

  number2 =''
  loop do
    prompt("Enter the second number")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("That's an invalid number, Try Again!")
    end
  end
  prompt_operator = <<-MSG
  What Operation do you want to perform:
    1) Addition
    2) Substraction
    3) Multiplication
    4) Division
  MSG
  prompt(prompt_operator)
  
  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Please select from 1 2 3 or 4 choices")
    end
  end

  result = case operation
          when '1'
            number1.to_i() + number2.to_i()
          when '2'
            number1.to_i() - number2.to_i()
          when '3'
            number1.to_i() * number2.to_i()
          when '4'
            number1.to_f() / number2.to_f()
  end   



  prompt("#{operation_to_message(operation)} the two numbers")

  prompt("The result is #{result}")

  prompt(" Do you want to do another calculation?(Y to start another one)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using simple calculator!")
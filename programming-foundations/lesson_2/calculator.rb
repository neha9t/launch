# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result
require 'yaml'
require 'pry'

LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def messages(key, lang = 'en')
  MESSAGES[lang][key]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_message(key)
  message = messages(key,LANGUAGE)
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def opertor_to_message(op)
  result =  case op
            when '1' then 'Adding'
            when '2' then 'Substracting'
            when '3' then 'Multiplying'
            when '4' then 'Dividing'
            end
  puts "Testing case statement"
  result
end
prompt(get_message('welcome'))

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("Hi #{name} !!")

loop do # main loop
  number1 = ''
  loop do
    prompt(get_message('first_num'))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(get_message('invalid_num'))
    end
  end

  number2 = ''
  loop do
    prompt(get_message('second_num'))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(get_message('invalid_num'))
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
      prompt(get_message('message_choice'))
    end
  end

  result =  case operation
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("#{opertor_to_message(operation)} the two numbers")

  prompt("The result is #{result}")

  prompt(get_message('user_input'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(get_message('thank_you'))

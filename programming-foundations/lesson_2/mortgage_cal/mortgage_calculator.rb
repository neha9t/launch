=begin
You'll need three pieces of information:

the loan amount
the Annual Percentage Rate (APR)
the loan duration
From the above, you'll need to calculate the following two things:

monthly interest rate
loan duration in months
You can use the following formula:

Mortgage Calculator Formula

Translated to Ruby, this is what the formula looks like:

m = p * (j / (1 - (1 + j)**-n))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months
Finally, don't forget to run your code through Rubocop.

Hints:

Figure out what format your inputs need to be in.
For example, should the interest rate be expressed as 5 or .05,
if you mean 5% interest?
If you're working with Annual Percentage Rate (APR),
you'll need to convert that to a monthly interest rate.
Be careful about the loan duration -- are you working with months or years?
Choose variable names carefully to assist in remembering.
=end

require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('mortgage_messages.yml')

def message(message)
  MESSAGES[message]
end

def prompt(message)
  Kernel.puts("=>  #{message}")
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

def monthly_payment(rate, amount, duration)
  monthly_payment = amount.to_i * (rate / (1 - ((1 + rate)**-duration)))
  prompt("The monthly payment came to : #{monthly_payment.round(2)} Bucks")
end

prompt(message('welcome'))

customer_name = Kernel.gets().chomp()

prompt("Hi #{customer_name}")

loop do
  prompt(message('ask_loan_amount'))

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp()
    if valid_number?(loan_amount)
      break if loan_amount.to_i >= 1000
      prompt(message('lower_loan_limit_msg'))
    else
      prompt(message('ask_valid_number'))
    end
  end
  prompt(message('ask_annual_rate'))

  annual_rate = ''
  monthly_rate = ''
  loop do
    annual_rate = Kernel.gets().chomp()
    if valid_number?(annual_rate)
      monthly_rate = annual_rate.to_f / 1200
      break
    else
      prompt(message('ask_valid_number'))
    end
  end

  prompt("Annually : #{annual_rate}, Monthly rate would be #{monthly_rate}")
  # Can such messages be inside '.yml' file?

  prompt(message('ask_loan_duration'))

  loan_duration = ''
  loop do
    loan_duration_in_years = Kernel.gets().chomp()
    if valid_number?(loan_duration_in_years)
      loan_duration = loan_duration_in_years.to_i * 12
      break
    else
      prompt(message('ask_valid_number'))
    end
  end

  prompt("you want loan for #{loan_duration} months")

  prompt(message('display_message'))

  prompt_message = <<-MSG

    Following are the details provided
    - monthly rate         : #{monthly_rate}
    - loan amount          : #{loan_amount}
    - loan duration(months): #{loan_duration}
    Your monthly payment can be calculated .

  MSG
  prompt(prompt_message)

  monthly_payment(monthly_rate, loan_amount, loan_duration)

  prompt(message('ask_for_another_iteration'))

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(message('thank_you_msg'))

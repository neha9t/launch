# Rock-Paper-Scissors-Lizard-Spock
require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

def test_method
  prompt('test message')
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def counter(player_count, computer_count, player, computer)
  if win?(player, computer)
    player_count = player_count + 1
    puts "player : "+ player_count.to_s
  elsif win?(computer, player)
    computer_count = computer_count + 1
    puts "computer : " + computer_count.to_s
  else
    prompt("It's a tie!")
  end
  total_count(player_count,computer_count)
end

def total_count(player_count, computer_count)
  if player_count == 5
    puts "player : "+ player_count.to_s
    prompt_message("You Won")
  elsif computer_count == 5
    puts "computer : "+ computer_count.to_s
    prompt_message("Computer Won")
  end
end

def shortcut_check(choice)
  case choice
    when 'r','rock' then 'rock'
    when 's','scissors' then 'scissors'
    when 'p','paper' then 'paper'
    when 'l','lizard' then 'lizard'
    when 'sp','spock' then 'spock' 
    end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")
    prompt_message = <<-MSG
    Please use shortcuts :
    r => rock
    p => paper
    s => scissors
    sp => spock
    l => lizard
    MSG

    prompt(prompt_message)
    
    choice = Kernel.gets().chomp()
    player_choice = shortcut_check(choice)

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{player_choice} ; Computer chose: #{computer_choice}")
  player_count = 0
  computer_count = 0
  counter(player_count, computer_count, player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

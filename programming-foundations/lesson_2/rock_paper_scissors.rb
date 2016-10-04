# Rock-Paper-Scissors-Lizard-Spock
require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)
WINNING_CHOICES = {rock: ['scissors', 'lizard'], paper: %w(rock spock),
 scissors: %w(paper lizard),
  lizard: %w(spock paper),
   spock: %w(scissors rock)}

@player_count = 0
@computer_count = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

def shortcut_check(choice)
  case choice.downcase
  when 'r', 'rock' then 'rock'
  when 's', 'scissors' then 'scissors'
  when 'p', 'paper' then 'paper'
  when 'l', 'lizard' then 'lizard'
  when 'sp', 'spock' then 'spock'
  end
end

def win_counter(player, computer)
  if win?(player, computer)
    @player_count += 1
    puts "player : " + @player_count.to_s
    @player_count
  elsif win?(computer, player)
    @computer_count += 1
    puts "computer : " + @computer_count.to_s
    @computer_count
  else
    prompt("It's a tie!")
  end
end

def total_count(player_count, computer_count)
  if @player_count == 5
    prompt("You Won!!")
  elsif @computer_count == 5
    prompt("Computer Won!")
  end
end

prompt_message = <<-MSG
    Please use shortcuts :
    r => rock
    p => paper
    s => scissors
    sp => spock
    l => lizard
    MSG

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")

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

  win_counter(player_choice, computer_choice)

  total_count(@player_count, @computer_count)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

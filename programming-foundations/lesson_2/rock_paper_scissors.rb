# Rock-Paper-Scissors-Lizard-Spock
require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)
POSITIVE_PLAY_AGAIN = %w(y yes)
WINNING_CHOICES = {
  rock: %w(scissors lizard),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  lizard: %w(spock paper),
  spock: %w(scissors rock)
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first.to_sym].include?(second)
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

def score_counter(player, computer, score)
  if win?(player, computer)
    score[:player_count] += 1
  elsif win?(computer, player)
    score[:computer_count] += 1
  else
    prompt("It was a tie")
  end
end

def display_iteration_counter(player, computer, score)
  if win?(player, computer)
    prompt("Player : #{score[:player_count]}")
  elsif win?(computer, player)
    prompt("Computer: #{score[:computer_count]}")
  end
end

def display_results(score)
  if score[:player_count] == 5
    prompt("You Won!")
  elsif score[:computer_count] == 5
    prompt("Computer Won!")
  end
end

def reinitiziling_score(score)
  score[:player_count] = 0
  score[:computer_count] = 0
end

def game_over?(score)
  (score[:player_count] == 5) || (score[:computer_count] == 5)
end

prompt_message = <<-MSG
    Please use shortcuts :
    r => rock
    p => paper
    s => scissors
    sp => spock
    l => lizard
    MSG
score = { player_count: 0, computer_count: 0 }
loop do
  player_choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")

    prompt(prompt_message)
    choice = Kernel.gets().chomp().downcase()
    player_choice = shortcut_check(choice)

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{player_choice} ; Computer chose: #{computer_choice}")
  score_counter(player_choice, computer_choice, score)
  display_iteration_counter(player_choice, computer_choice, score)

  display_results(score)

  reinitialize_score(score) if game_over?(score)

  prompt("Do you want to play again?")
  answer = ''
  loop do
    answer = Kernel.gets().chomp().downcase()
    case answer
    when 'y', 'yes'
      break
    when 'n', 'no'
      prompt("Thanks for playing, GoodBye!")
      break
    else
      prompt("That's a misleading response, Please choose Y or N")
    end
  end
  break unless POSITIVE_PLAY_AGAIN.include?(answer)
end

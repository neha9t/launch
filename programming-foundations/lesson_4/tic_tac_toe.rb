=begin
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn
and marks a square on the board. First player to reach 3 squares in a row,
including diagonals, wins. If all 9 squares are marked and no player has
3 squares in a row, then the game is a tie.

1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye
=end
require 'pry'

POSITIVE_PLAY_AGAIN = %w(y yes)
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER} and Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |key| brd[key] == INITIAL_MARKER }
end

def joinor(arr, delimiter=", " , seperator= " or ")
  *list, last = arr
    if list.size == 0
     puts "Choose the last square " + last.to_s
    else
    puts "Choose a square from #{list.join(delimiter)}" + seperator + " " + last.to_s
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    joinor(empty_squares(brd))
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry that's not a valid choice"
    end
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(brd)
  WINNING_LINES.each do |line| 
    *first_two, last = line
    return brd[last] if brd.values_at(*first_two).count(PLAYER_MARKER) == 2
  end
  prompt "#{brd[square]}"
end

def score_count(brd,score)
  if (detect_winner(brd) == 'Player')
    score[:player_count] += 1
  elsif(detect_winner(brd) == 'Computer')
    score[:computer_count] += 1
  end
end

def display_iteration_number(brd,score)
  if (detect_winner(brd) == 'Player')
    prompt "Player count : #{score[:player_count]}, Computer count : #{score[:computer_count]}"
  elsif(detect_winner(brd) == 'Computer')
    prompt "Player count : #{score[:player_count]}, Computer count : #{score[:computer_count]}"
  end
end

def display_winner(score)
  if score[:player_count] == 5
    prompt "Player is the Winner"
  elsif score[:computer_count] == 5
    prompt "Computer is the Winner"
  end
end

def reinitialize_score(score)
  score[:player_count] = 0
  score[:computer_count] = 0
end

def game_over?(score)
  (score[:player_count] == 5) || (score[:computer_count] == 5)
end

score = { player_count: 0, computer_count: 0 }
loop do
  board = initialize_board
  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    find_at_risk_square(board)
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
  display_board(board)

  if someone_won?(board)
    score_count(board,score)
    display_iteration_number(board,score)
  else
    prompt "It was a tie"
  end
  display_winner(score)
  reinitialize_score(score) if game_over?(score)

  prompt "play again?"
  answer = ''
  loop do
    answer = gets.chomp.downcase
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

prompt "Thanks for playing Tic Tac Toe! Good Bye!"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input -= 1
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == false && index < 9 && index > -1
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# position_taken?([" ", " ", " ", " ", "X", " ", " ", " ", " "], 4)
# valid_move?([" ", " ", "X", " ", "X", " ", " ", " ", " "], 2)

def move(board, index)
  player = "X"
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  move_valid = valid_move?(board, index)
  if !move_valid
    turn(board)
  end
  move(board, index)
end

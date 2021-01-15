
# display the board

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# turn user into an integer for the input

def input_to_index(user_input)
  user_input.to_i - 1
end

# check to see if position taken is occupied

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
  	return false
  else
  	return true
  end
end


# check if a valid move

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
  	return true
  end
end

# work out how many moves have been made

def turn_count(board)
  counter = 0
  board.each do |spaces|
  	if spaces == "X" || spaces == "O"
  	  counter += 1
  	end
  end
  counter
end



# determine the current player

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end


# put the number into the board

def move(board, index, player)
  board[index] = player
end


def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  user_input  = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    turn(board)
  end
end

# turn(board)

# outline the different win cobminations as a constant

WIN_COMBINATIONS = [
  [0,1,2], #top_row
  [3,4,5], #middle_row
  [6,7,8], #bottom_row
  [0,3,6], #left_column
  [1,4,7], #center_column
  [2,5,8], #right_column
  [0,4,8], #left_diagonal
  [6,4,2], #right_diagonal
  ]

# define the winning method

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  	win_index_1 = win_combination [0]
  	win_index_2 = win_combination [1]
  	win_index_3 = win_combination [2]


  	position_1 = board[win_index_1] # value of board at win_index_1
  	position_2 = board[win_index_2] # value of board at win_index_2
  	position_3 = board[win_index_3] # value of board at win_index_3


  	position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
  end
end

won?(board)
# outline when there's no result and the board is full

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
  	return true
  elsif !won?(board) && !full?(board)
  	return false
  else won?(board)
  	return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
  	return true
  end
end


# announce the winner

# def winner(board)
#   if won?(board)
#     puts "ec1"
#     return won?(board) [1]
#   end
# end



# define the play methods

# Play Method A

def play(board)
  counter = 0
  until counter == 9
    turn(board)
    counter += 1
  end
end


# play method b

# def play(board)
#   until over?(board)
#     turn(board)
#   end
#   if won?(board)
#     winner(board) == "X" || winner(board) == "O"
#     puts "Congratulations #{winner(board)}!"
#   elsif draw?(board)
#     puts "Cats Game!"
#   end
# end

play(board)

# puts won?(board)
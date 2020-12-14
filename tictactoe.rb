# tic tac toe

# the board
# the board has nine empty squares 
# => the board is an array of 9 empty squares

puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def display_board
  puts row = ["   " "|" "   " "|" "   "]
  puts seperator = "-----------"
  puts row
  puts seperator
  puts row
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)


# there are two different tokens - X and O
# => X & 0

def input_to_index(user_input)
  user_input.to_i - 1
end

input_to_index(user_input)



# there are two players
# => what is a a player/ how do we define a player



# players take turns playing
# => define what a turn is; how will a player take turns playing

def move(board, index, player)
  board[index] = player
end

move(board, index, first_player = "X")



# 1st trun - player 1

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move? (board, index)
  	move (board, index, current_player(board))
  	turn(board)
  end
  display_board(board)
end


# => iterate the game playing where players take turns; 
# a player can't place a token on a square that's already taken

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
  	return false
  else
  	return true
  end
end

position_taken?(board, index)

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
  	return true
  end
end

valid_move?(board, index)



# player 1 places token (x) in only 1 square of their choice

def turn_count(board)
  counter = 0
  board.each do |spaces|
  	if spaces == "X" || spaces == "0"
  	  counter += 1
  	end
  end
  counter
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

Play Method A

def play(board)
  counter = 0
  until counter == 9
  	turn(board)
  	counter += 1
  end
end

Play Method B

def play(board)
  until over?(board)
  	turn (board)
  end
  if won?(board)
  	winner(board) == "X" || winner(board) == "O"
  	puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
  	puts "Cats Game!"
  end
end

# until the game is over
# players keep taking turns
# plays the first few turns of the game
# if there's a winner...
	# we check who the winner is...
	# can congratulate them 
	# if there's a tie, print the message

	
# 2nd turn - player 2

# player 2 places their token (0) in only one square of their choice
# can't be placed in square with token



# 3rd turn - player 1...  repeat cycle until result



# 8 winning combinations: 
#top row, middle row, bottom row, Left column, middle column, right column, left diagonal, and right diagonal
# => define the combinations

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



# there's a draw/ tie when the entire board is filled but there are no winning combinations
# => define what a draw/ tie is; define what a filled board is 

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




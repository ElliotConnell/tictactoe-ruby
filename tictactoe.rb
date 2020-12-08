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

# 2nd turn - player 2



# player 2 places their token (0) in only one square of their choice
# can't be placed in square with token



# 3rd turn - player 1...  repeat cycle until result



# 8 winning combinations: 
#top row, middle row, bottom row, Left column, middle column, right column, left diagonal, and right diagonal
# => define the combinations




# there's a draw/ tie when the entire board is filled but there are no winning combinations
# => define what a draw/ tie is; define what a filled board is 



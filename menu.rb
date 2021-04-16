
puts "Welcome to TicTacToe!"


def rules()
	puts "RULES FOR TIC-TAC-TOE."
	puts "The game is played on a grid that's 3 squares by 3 squares."
	puts "Player 1 is  X, Player 2 is O."
	puts "The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner."
	puts "When all 9 squares are full, the game is over."
	puts "The grid is numbered 1-9 across the board."
	puts ""
	puts " 1 | 2 | 3 "
	puts "-----------"
	puts " 4 | 5 | 6 "
	puts "-----------"
  	puts " 7 | 8 | 9 "
end

def start()
	puts ""
	puts "Enter 'rules' to see the rules, enter 'play' to start game: "
	input = gets.strip
	if input == 'rules'
		rules()
		puts ""
		start()
	elsif input == 'play'
		require_relative 'tictactoe'
	end
end

start()		





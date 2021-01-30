
puts "Welcome to TicTacToe!"


def rules()
	puts "RULES FOR TIC-TAC-TOE."
	puts "The game is played on a grid that's 3 squares by 3 squares."
	puts "Player 1 is  X, Player 2 is O."
	puts "The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner."
	puts "When all 9 squares are full, the game is over."
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
		puts "stuff"
	end
end

start()		





def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  user_input  = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))

    if won?(board)
    	winner(board)
    end

    if over?(board)
    	puts "Cats Game!"
    	exit
    end

    turn(board)

  else
  	puts "Invalid move!"
  	turn(board)
  end
end
class SequentialAi
    attr_reader :marker

    def initialize(marker)
        @marker = marker
    end

    def get_move(board)
		board.index("")
	end

    # def valid_space?(board, choice)
	# 	board[choice] == ""
	# end

    # def get_move(board)
	# 	sequentail_move = board.index("")
	# 	choice = sequentail_move
    #     if valid_space?(board, choice) == false
	# 		get_move(board)
    #         choice += 1
	# 	else
	# 		choice
	# 	end
	# end

end
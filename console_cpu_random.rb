class Random
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def valid_space?(board, choice)
		board[choice] == ""
	end
	
	def random_move(board)
		
		random = rand(0..9)

		random_move = rand(1..9)
        if valid_space?(board, random_move) == false
            get_move(board)
        else
            random_move
        end
	end
		
end

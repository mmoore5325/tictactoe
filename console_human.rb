class Human
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		puts "Make a move"
		move = gets.chomp.to_i - 1

		if board[move] == "" && move >= 0 && move <=8
			move
		else
			puts "Spot already taken."
			get_move(board)
		end
	end
		
end

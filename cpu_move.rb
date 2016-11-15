class Human
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def cpu_move(move)
		
		cpumove = move + 1

		if board[cpumove] == ""
			move
		else
			puts "asdasSpot already taken."
			cpu_move(board)
		end
	end
		
end
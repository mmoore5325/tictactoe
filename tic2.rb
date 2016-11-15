class Board

	def initialize
		@board = Array.new(3){Array.new(3, " ")}
		@i = 0
	end

	def instructions

		puts "_1_|_2_|_3_"
		puts "_4_|_5_|_6_"
		puts " 7 | 8 | 9 "

	end

	def choosespot_x
	
		puts "X -- Choose a spot"
		move = gets.chomp.to_i
		if move <= 9
			@board.each_with_index do |value, index|
				if move == index
					value = "X"
				end
			end
		end
		@i = @i + 1
		choosespot_o
	end

	def choosespot_o
	
		puts "O -- Choose a spot"
		move = gets.chomp.to_i
		if move <= 9
			@board.each_with_index do |value, index|
				if move == index
					value = "O"
				end
			end
		end
		@i = @i + 1
		choosespot_x
	end

end

board = Board.




class Game
	
	attr_reader :row1, :row2, :row3

	def initialize

		@row1 = [1, 2, 3]
		@row2 = [4, 5, 6]
		@row3 = [7, 8, 9]
		@counter = 0


	end

	def play
		welcome
		print_board
		choosespot
		# put all functions to run in order here
	end

	def welcome

		puts "\n\n\n\n\n\n\n\n\n"
		puts "Welcome to my crappy tic tac toe.  X goes first."
		puts "\n\n\n\n\n\n\n\n\n"
	end

	def print_board

		puts "\t\t\t\t\t\t #{@row1[0]} | #{@row1[1]	} | #{@row1[2]}"
		puts "\t\t\t\t\t\t-----------"
		puts "\t\t\t\t\t\t #{@row2[0]} | #{@row2[1]} | #{@row2[2]}"
		puts "\t\t\t\t\t\t-----------"
		puts "\t\t\t\t\t\t #{@row3[0]} | #{@row3[1]} | #{@row3[2]}"

	end

	# def choosespot_x

	# 	puts "Lets play a game!  X goes first."
	# 	spot = gets.chomp.to_i
		
	# 	if spot <= 3
	# 		spot = spot - 1
	# 		row1[spot] = "X"
		
	# 	elsif spot <= 6 && spot > 3
	# 		spot = (spot - 1) % 3
	# 		row2[spot] = "X"

	# 	elsif spot <= 9 && spot > 6
	# 		spot = (spot - 1) % 3
	# 		row3[spot] = "X"
	# 	else
	# 		puts "Invalid character, try again."
	# 		exit
	# 	end
	# 	@counter = @counter + 1
	# 	print_board
	# 	choosespot_o
	# end

	def choosespot

		spot = gets.chomp.to_i
		
		if spot <= 3
			spot = spot - 1
			checkrow1(spot)
			row1[spot] = "O"
		
		elsif spot <= 6 && spot > 3
			spot = (spot - 1) % 3
			checkrow2(spot)
			row2[spot] = "O"

		elsif spot <= 9 && spot > 6
			spot = (spot - 1) % 3
			checkrow3(spot)
			row3[spot] = "O"
		else
			puts "Invalid character, try again."
			choosespot
		end
		
	end

	def checkrow1(spot)
		if @row1[spot] == "X" || @row1[spot] == "O"
				puts "Spot is already taken"
				choosespot
		else
			if @counter % 2 == 0
				@row1[spot] = "X"
				puts "\n\n\n\n\n\n"
				print_board
				@counter = @counter + 1
				winner
			else
				@row1[spot] = "O"
				@counter = @counter + 1
				puts "\n\n\n\n\n\n"
				print_board
				winner
			end
		end
	end
		
	def checkrow2(spot)	
		if @row2[spot] == "X" || @row2[spot] == "O"
				puts "Spot is already taken"
				choosespot
		else
			if @counter % 2 == 0
				@row2[spot] = "X"
				@counter = @counter + 1
				puts "\n\n\n\n\n\n"
				print_board
				winner
			else
				@row2[spot] = "O"
				@counter = @counter + 1
				puts "\n\n\n\n\n\n"
				print_board
				winner
			end
		end
	end

def checkrow3(spot)

		if @row3[spot] == "X" || @row3[spot] == "O"
				puts "Spot is already taken"
				choosespot
		else
			if @counter % 2 == 0
				@row3[spot] = "X"
				@counter = @counter + 1
				puts "\n\n\n\n\n\n"
				print_board
				winner
			else
				@row3[spot] = "O"
				@counter = @counter + 1
				puts "\n\n\n\n\n\n"
				print_board
				winner
			end
		end
	end
		
end
class Winner

	def initialize

		@x_wins = 0
		@o_wins = 0

	def winner
		if @row1[0] == @row2[0] && @row2[0] == @row3[0] || @row1[0] == @row2[1] && @row2[1] == @row3[2] || @row1[0] == @row2[0] && @row2[0] == @row3[0] || @row2[0] == @row2[1] && @row2[1] == @row2[2] || @row1[0] == @row1[1] && @row1[1] == @row1[2] ||  @row3[0] == @row3[1] && @row3[1] == @row3[2] || @row1[1] == @row2[1] && @row2[1] == @row3[1] || @row1[2] == @row2[2] && @row2[2] == @row3[2] || @row1[2] == @row2[1] && @row2[1] == @row3[0] 
			if @counter % 2 == 0
				puts "O is the winner!"
				@o_wins = @o_wins + 1
				exit
			else
				@x_wins = @x_wins + 1
				puts "X is the winner!"
				exit
			end
		elsif @counter == 9
			puts "Its a tie!"
			exit
		else
			choosespot
		end
	end
end
# Game.new.play
Game.new.print_board
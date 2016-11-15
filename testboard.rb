require 'minitest/autorun'
require_relative 'board.rb'

class Testgame < Minitest::Test 
	
	def test_new_board
		
		board = Board.new
		assert_equal(Array.new(9, ""), board.board)
	end

	def test_for_update
		board = Board.new
		board.update(0, "x")
		assert_equal(["x", "", "", "", "", "", "", "", ""], board.board)
	end

	def test_for_update_board_turn_2
		board = Board.new
		board.board = ["x", "", "", "", "", "", "", "", ""]
		board.update(1, "o")
		assert_equal(["x", "o", "", "", "", "", "", "", ""], board.board)
	end

	def test_for_occupied_space
		board = Board.new
		board.board = ["x", "o", "", "", "", "", "", "", ""]
		assert_equal(false, board.valid_space?(1))
		assert_equal(true, board.valid_space?(3))
	end

	def test_for_valid_input
		board = Board.new
		assert_equal(true, board.valid_input?("5"))
		assert_equal(false, board.valid_input?("10"))	
		assert_equal(false, board.valid_input?("n"))
	end

	def test_full_board
		board = Board.new
		board.board = ["x", "x", "x", "x", "x", "x", "x", "x"]
		assert_equal(true, board.full_board?)
	end

	def test_partially_full_board
		board = Board.new
		board.board = ["x", "x", "x", "x", "", "", "", "", ""]
		assert_equal(false, board.full_board?)
	end

	def test_winner
		board = Board.new
		board.board = ["x", "x", "x", "", "", "", "", "", ""]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_2
		board = Board.new
		board.board = ["", "", "", "x", "x", "x", "", "", ""]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_3
		board = Board.new
		board.board = ["", "", "", "", "", "", "x", "x", "x"]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_4
		board = Board.new
		board.board = ["x", "", "", "x", "", "", "x", "", ""]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_5
		board = Board.new
		board.board = ["", "x", "", "", "x", "", "", "x", ""]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_6
		board = Board.new
		board.board = ["", "", "x", "", "", "x", "", "", "x"]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_7_diagonal_1
		board = Board.new
		board.board = ["x", "", "", "", "x", "", "", "", "x"]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end

	def test_winner_7_diagonal_2
		board = Board.new
		board.board = ["", "", "x", "", "x", "", "x", "", ""]
		symbol = "x"
		assert_equal(true, board.winner?(symbol))
	end
end
	
require 'minitest/autorun'
require_relative 'unbeatable_ai.rb'

class TestUnbeatable < Minitest::Test

	def test_unbeatable_ai
		player = UnbeatableAi.new("x")
		assert_equal("x", player.marker)
	end

	# def test_empty_board
	# 	player = UnbeatableAi.new("x")
	# 	board = Board.new
	# 	assert_equal(true, board.empty_board?)
	# end

	# def test_for_valid_space
	# 	player = UnbeatableAi.new("x")
	# 	assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(player.get_move(["", "", "", "", "", "", "", "", ""])))
		
	# end

	def test_for_winning_space_at_index_0
		player = UnbeatableAi.new("x")
		assert_equal(0, player.get_move(["", "x", "x", "", "", "", "", "", ""]))
	end

	def test_for_winning_space_at_index_8
		player = UnbeatableAi.new("x")
		assert_equal(8, player.get_move(["", "", "", "", "", "", "x", "x", ""]))
	end
	

	def test_for_win_at_five
		player = UnbeatableAi.new("x")
		assert_equal(5, player.get_move(["", "", "", "x", "x", "", "", "", ""]))
	end

	def test_for_center_move
		player = UnbeatableAi.new("X")
		assert_equal(4, player.get_move(["", "", "", "", "", "", "", "", ""]))
	end

	def test_move_first_open_corner_when_center_is_taken
		player = UnbeatableAi.new("x")
		assert_equal(2, player.get_move(["x", "", "", "", "o", "", "", "", ""]))
	end

	def test_block_fork
		player = UnbeatableAi.new("o")
		assert_equal(1, player.get_move(["x", "", "", "", "o", "", "", "", "x"]))
	end

end



	
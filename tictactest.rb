require 'minitest/autorun'
require_relative 'tic3.rb'

class TestGame < Minitest::Test 
	
	def test_row_1
		
		row1 = Game.new(row1)
		assert_equal([1,2,3], row1.row1)
	end
end
	

require "minitest/autorun"
require_relative 'console_cpu_random.rb'


class TestRandomAI < Minitest::Test

    def test_random_ai_player
        player = Random.new("O")
        assert_equal("O", player.marker)
    end

    def test_for_valid_space
        player = Random.new("O")
        assert_equal(true, player.valid_space?(["","O","X","O","O","O","O","O", "O"], 0))
        end
    
    def test_for_invalid_space
        player = Random.new("O")
        assert_equal(false, player.valid_space?(["O","","X","O","O","O","O","O", "O"], 0))
    end

    def test_get_move
        player = Random.new("O")
        assert_equal(1, player.random_move(["O","","X","O","O","O","O","O", "O"]))
    end
end
require_relative "console_game.rb"


game = Game.new

until game.game_over?
    game.change_player
    game.print_board
    move = game.get_move
    game.make_move(move)
    game.print_board
end

game.end_message
# if game.board.winner?(game.current_player.marker)
# 	puts "#{current_player.marker} wins!"
# else
# 	game.board.full_board?
# 	pts "you tied!"
# end

# game.print_board

# move = game.get_move

# game.make_move(move)

# game.print_board

# game.change_player

# move = game.get_move
# game.make_move(move)
# game.print_board

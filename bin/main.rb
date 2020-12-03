#!/usr/bin/env ruby
# rubocop:disable Metrics/PerceivedComplexity

require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/game.rb'
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
puts "Please, enter name of Player 'X':"
player1 = Player.new(gets.chomp, 'X')
puts "Please, enter name of Player 'O':"
player2 = Player.new(gets.chomp, 'O')
new_board_game = Board.new(board)
puts new_board_game.display(board)
game(player1,player2,new_board_game,board)
# rubocop:enable Metrics/PerceivedComplexity
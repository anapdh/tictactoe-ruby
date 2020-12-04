#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/rules'

game_on = true
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

game_rules = Rules.new

puts 'Would you like to read the game rules/instructions? (yes, no)'
answer = gets.chomp

if answer == 'yes'
  puts game_rules.display_rules
else
  puts "\n Ok, let's start the game! \n "
end

puts "Please, enter name of Player 'X':"
player1 = Player.new(gets.chomp, 'X')
puts "Please, enter name of Player 'O':"
player2 = Player.new(gets.chomp, 'O')
new_board_game = Board.new(board)
puts new_board_game.display(board)

move(gets.chomp, board)
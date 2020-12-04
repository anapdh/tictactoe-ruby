#!/usr/bin/env ruby
# rubocop:disable Metrics/PerceivedComplexity

require_relative '../lib/player'
require_relative '../lib/rules'
require_relative '../lib/game'

def display(board)
  puts "
      #{board[6] == ' ' ? 7 : board[6]} | #{board[7] == ' ' ? 8 : board[7]} | #{board[8] == ' ' ? 9 : board[8]}
      -----------
      #{board[3] == ' ' ? 4 : board[3]} | #{board[4] == ' ' ? 5 : board[4]} | #{board[5] == ' ' ? 6 : board[5]}
      -----------
      #{board[0] == ' ' ? 1 : board[0]} | #{board[1] == ' ' ? 2 : board[1]} | #{board[2] == ' ' ? 3 : board[2]}"
end
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

game_on = true
turn = true

game_rules = Rules.new
puts 'Would you like to read the game rules/instructions? (yes, no)'
answer = gets.chomp
if answer == 'yes'
  puts game_rules.display_rules
else
  puts "\n Ok, let's start the game! \n "
end
puts "Please, enter name of Player 'X':"
player1 = gets.chomp
puts "Please, enter name of Player 'O':"
player2 = gets.chomp
game = Game.new(player1, player2)
display(board)

while game_on
  puts if turn
  "#{player1} is playing... \n
  CHOOSE YOUR POSITION \n "
else
  "#{player2} is playing... \n
  CHOOSE YOUR POSITION \n "
end
  pos = gets.chomp
  if game.valid?(pos)
    case game.free?(pos, board)
    when true
      game.move(pos, board, turn)
    when false
      puts " \n POSITION #{pos} TAKEN! Please, Try again."
      display(board)
      next
    end
  else
    puts " \n INVALID NUMBER! Please, Try again."
    game.move(pos, board, turn)
  end
  display(board)
  turn = !turn
  if game.did_win?(board)
    puts turn ? " \n #{player1} Won! CONGRATULATIONS!!! \n " : " \n #{player2} Won! CONGRATULATIONS!!! \n "
    break
  end
  if game.did_draw?(board)
    puts " \n No spaces left. GAME OVER!! \n "
    break
  end
end

# rubocop:enable Metrics/PerceivedComplexity

#!/usr/bin/env ruby
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/CyclomaticComplexity

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
puts "Would you like to read the game rules/instructions?
(All answers are accepted! [EASTER EGGS!! Excuslive For Christmas!!], ONLY 'no' Will work!)"
answer = gets.chomp.to_s.downcase
if answer == 'no'
  puts " \n Ok, let's start the game! \n "
else
  puts game_rules.display_rules
end
puts "Please, enter name of Player 'X':"
player1 = gets.chomp
puts "Please, enter name of Player 'O':"
player2 = gets.chomp
game = Game.new(player1, player2)
display(board)
while game_on
  if turn
    puts "#{player1} is playing...
    CHOOSE YOUR POSITION \n "
  else
    puts "#{player2} is playing...
    CHOOSE YOUR POSITION \n "
  end
  pos = gets.chomp
  if game.valid?(pos)
    if game.free?(pos, board) == true
      game.move(pos, board, turn)
    elsif game.free?(pos, board) == false
      puts "POSITION #{pos} TAKEN! Please, Try again."
      display(board)
      next
    end
  else
    puts " \n INVALID NUMBER! Please, Try again."
    next
  end
  display(board)
  if game.did_win?(board)
    puts turn ? " \n #{player1} Won! CONGRATULATIONS!!! \n " : " \n #{player2} Won! CONGRATULATIONS!!! \n "
    break
  end
  if game.did_draw?(board)
    puts " \n No spaces left. GAME OVER!! \n "
    break
  end
  turn = !turn
end

# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/CyclomaticComplexity

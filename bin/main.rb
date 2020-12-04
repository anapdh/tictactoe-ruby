#!/usr/bin/env ruby

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
game = Game.new(player1,player2)
display(board)

while game_on
  pos = gets.chomp
  if game.valid?(pos)


    if game.free?(pos, board) == true
      puts "TRUE"
      game.move(pos,board, turn)
    elsif game.free?(pos, board) == false
      puts "POSITION #{pos} TAKEN! Please, Try again."
      display(board)
      next
    end

  else
    puts "INVALID NUMBER! Please, Try again."
    game.move(pos,board, turn)
  end
  display(board)
  turn = !turn
  if game.did_win?(board)
    puts turn ? "#{player1} Won" : "#{player2} Won"
    break
  end
  if game.did_draw?(board)
    puts "GAME OVER"
    break
  end
end
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
while game_on
  player1.play(board)
  new_board_game.display(board)
  if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
    game_on = false
    puts "Congratulations #{player1.name}, you won!"
    break
  end
  if board.include?(' ') == false
    puts 'GAME OVER!!!'
    break
  end
  player2.play(board)
  new_board_game.display(board)
  if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
    game_on = false
    puts "Congratulations #{player2.name}, you won!"
    break
  end
  if board.include?(' ') == false
    puts 'GAME OVER!!!'
    break
  end
end

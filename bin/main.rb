#!/usr/bin/env ruby
# rubocop:disable Metrics/PerceivedComplexity

require_relative '../lib/player'
require_relative '../lib/board'

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
puts "Please, enter name of Player 'X':"
player1 = Player.new(gets.chomp, 'X')
puts "Please, enter name of Player 'O':"
player2 = Player.new(gets.chomp, 'O')
new_board_game = Board.new(board)
puts new_board_game.display(board)

public

def play(arr)
  puts " #{name} is playing \n CHOOSE YOUR POSITION!"
  pos = gets.chomp.to_i
  if pos < 10
    pos -= 1
    arr.each_with_index do |num, i|
      if i == pos && num == ' '
        arr[i] = @symbol
      elsif i == pos && num != ' '
        puts 'POSITION UNAVAILABLE!! TRY AGAIN!!'
        play(arr)
      end
    end
  else
    puts 'Invalid number!! Try Again!'
    play(arr)
  end
end

player1.play(board)
new_board_game.display(board)
player2.play(board)
new_board_game.display(board)

# rubocop:enable Metrics/PerceivedComplexity

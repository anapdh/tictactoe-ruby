#!/usr/bin/env ruby
# rubocop:disable Metrics/PerceivedComplexity

require '../lib/player'

winning = false
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
player1 = Player.new('Neko', 'X')
player2 = Player.new('Ana', 'O')

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
      end
    end
  else
    puts 'Invalid number!! Try Again!'
    play(arr)
  end
end

def display(board)
  puts "      #{board[0]} | #{board[1]} | #{board[2]}
      ----------
      #{board[3]} | #{board[4]} | #{board[5]}
      ----------
      #{board[6]} | #{board[7]} | #{board[8]}"
end

while winning == false
  player1.play(board)
  display(board)
  if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
    winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  end
  if board.include?(' ') == false
    puts 'GAME OVER!!!'
    break
  end

  player2.play(board)
  display(board)

  if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
    winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  end
  if board.include?(' ') == false
    puts 'GAME OVER!!!'
    break
  end

end

# rubocop:enable Metrics/PerceivedComplexity

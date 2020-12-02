#!/usr/bin/env ruby



#Player1 need to select X or O.
#Player2 will have the remainig symbol.

# HOW TO SELECT PLAYER
$winning = false
$board = [" "," ", " ", " ", " ", " ", " ", " ", " "]

class Game
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
  def play()
    puts "CHOOSE YOUR POSITION!"
    pos = gets.chomp 
    pos = pos.to_i - 1
    $board.each_with_index do |num, i|
      if i == pos && num == " "
        $board[i] = @symbol
      end
  
    end
  end
  def display
  
    puts"      #{$board[0]} | #{$board[1]} | #{$board[2]}
      ----------
      #{$board[3]} | #{$board[4]} | #{$board[5]}
      ----------
      #{$board[6]} | #{$board[7]} | #{$board[8]}"
  end

end

player1 = Game.new("p1", "X")
player2 = Game.new("p2", "O")

#continues untill one of the players fill 3 spaces in sequence.
#play $winning message for the first who get there.

while $winning == false 
  
  player1.play
  player1.display

  if $board[0] == $board[1] && $board[1] == $board[2] && $board[0] != " "
    $winning = true
    puts "Congratulations, you won!"
  elsif $board[0] == $board[3] && $board[3] == $board[6] && $board[0] != " "
    $winning = true
    puts "Congratulations, you won!"
    $winning = true
  elsif $board[0] == $board[4] && $board[4] == $board[8] && $board[0] != " "
    puts "Congratulations, you won!"
    $winning = true
  elsif $board[2] == $board[4] && $board[4] == $board[6] && $board[2] != " "
    puts "Congratulations, you won!"
    $winning = true
  end


  player2.play
  player2.display
end

  # if $board == full
  # puts "GAME IS OVER!! DRAW!!"




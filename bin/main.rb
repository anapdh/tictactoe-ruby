#!/usr/bin/env ruby



#Player1 need to select X or O.
#Player2 will have the remainig symbol.

# HOW TO SELECT PLAYER
$winning = false
$board = [" "," ", " ", " ", " ", " ", " ", " ", " "]
lastPlayer = "P:"
class Game
  attr_reader :name
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
  def play()
    puts " #{self.name} is playing \n CHOOSE YOUR POSITION!"
    lastPlayer = self.name
    pos = gets.chomp 
    pos = pos.to_i - 1
    $board.each_with_index do |num, i|
      if i == pos && num == " "
        $board[i] = @symbol
      elsif i == pos && num != " "
        puts "POSITION UNAVAILABLE!! TRY AGAIN!!"
        play()
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

player1 = Game.new("Neko Master", "X")
player2 = Game.new("Ana Paula", "O")

while $winning == false 
  
  
  player1.play
  player1.display
  # rows
  ## first row
  if $board[0] == $board[1] && $board[1] == $board[2] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  ## second row
  elsif $board[3] == $board[4] && $board[4] == $board[5] && $board[3] != " "
    break
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
  ## third row
  elsif $board[6] == $board[7] && $board[7] == $board[8] && $board[6] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break

    #columns
    ## first column
  elsif $board[0] == $board[3] && $board[3] == $board[6] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
    ## second -column
  elsif $board[1] == $board[4] && $board[4] == $board[7] && $board[1] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
    ## third column
  elsif $board[2] == $board[5] && $board[5] == $board[8] && $board[2] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break

    ## first diagonal
  elsif $board[0] == $board[4] && $board[4] == $board[8] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
    ## second diagonal
  elsif $board[2] == $board[4] && $board[4] == $board[6] && $board[2] != " "
    $winning = true
    puts "Congratulations #{player1.name}, you won!"
    break
  end
  if $board.include?(" ") == false
    puts "GAME OVER!!!"
    break
  end

  player2.play
  player2.display

  if $board[0] == $board[1] && $board[1] == $board[2] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  ## second row
  elsif $board[3] == $board[4] && $board[4] == $board[5] && $board[3] != " "
    break
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
  ## third row
  elsif $board[6] == $board[7] && $board[7] == $board[8] && $board[6] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break

    #columns
    ## first column
  elsif $board[0] == $board[3] && $board[3] == $board[6] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
    ## second -column
  elsif $board[1] == $board[4] && $board[4] == $board[7] && $board[1] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
    ## third column
  elsif $board[2] == $board[5] && $board[5] == $board[8] && $board[2] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break

    ## first diagonal
  elsif $board[0] == $board[4] && $board[4] == $board[8] && $board[0] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
    ## second diagonal
  elsif $board[2] == $board[4] && $board[4] == $board[6] && $board[2] != " "
    $winning = true
    puts "Congratulations #{player2.name}, you won!"
    break
  end
  if $board.include?(" ") == false
    puts "GAME OVER!!!"
    break
  end

end





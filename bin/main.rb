#!/usr/bin/env ruby

puts 'Hello World! <3'


#Player1 need to select X or O.
#Player2 will have the remainig symbol.

# HOW TO SELECT PLAYER



# symbol = [0, 1, 2]

# board = [0, 0, 0, 0, 0, 0, 0, 0, 0]

#     0 | 1 | 2
#     ----------
#     3 | 4 | 5
#     ----------
#     6 | 7 | 8

class Game

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def check(pos)
    #select a place"
    #num = gets.chomp
    board.each_with_index do |num, i|
    # if i == pos && num == 0
    # board[i] = player1 or player2(symbol)
    # else
    #"not available position"
  end

  def display
    puts 
    "#{board[0]} | #{board[1]} | #{board[2]}
    ----------
    #{board[3]} | #{board[4]} | #{board[5]}
    ----------
    #{board[6]} | #{board[7]} | #{board[8]}"
  end

end

player1 = Game.new("p1", 1)
player2 = Game.new("p2", 2)


#Player 1 selects 1 of the 9 spaces to fill.



#continues untill one of the players fill 3 spaces in sequence.

# ROW if position[0] == [1] && [1] == [2]
# COLUMN if position[0] == position[3] && position[3] == position[6]
# DIAGONAL if position[0] == position[4] && position[4] == position[8]
# DIAGONAL2 if position[2] == position[4] && position[4] == position[6]

#play Winning message for the first who get there.

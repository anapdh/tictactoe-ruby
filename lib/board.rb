#Class for the board
class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def display(board)
    puts "      #{board[6]} | #{board[7]} | #{board[8]}
        ----------
        #{board[3]} | #{board[4]} | #{board[5]}
        ----------
        #{board[0]} | #{board[1]} | #{board[2]}"
  end

end
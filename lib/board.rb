# Class for the board
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/CyclomaticComplexity

class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def display(board)
    puts "
        #{board[6] == ' ' ? 7 : board[6]} | #{board[7] == ' ' ? 8 : board[7]} | #{board[8] == ' ' ? 9 : board[8]}
        -----------
        #{board[3] == ' ' ? 4 : board[3]} | #{board[4] == ' ' ? 5 : board[4]} | #{board[5] == ' ' ? 6 : board[5]}
        -----------
        #{board[0] == ' ' ? 1 : board[0]} | #{board[1] == ' ' ? 2 : board[1]} | #{board[2] == ' ' ? 3 : board[2]}"
  end
end

# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/CyclomaticComplexity
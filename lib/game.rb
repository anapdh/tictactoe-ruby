require_relative './player'
require_relative './rules'

class Game
  attr_reader :player1, :player2
  
  def initialize(player1, player2)
    @player1 =  Player.new(player1, 'X')
    @player2 =  Player.new(player2, 'O')
  end

  def valid?(pos)
    pos = pos.to_i
      if pos < 10 && pos > 0 && pos.is_a?(Integer)
        true
      else
        false
      end
  end

  def free?(pos, arr)
    pos = pos.to_i - 1
    arr.each_with_index do |num, i|
      if i == pos && num == ' '
        true
      elsif i == pos && num != ' '
        false
      end
    end
  end
  
  def move(pos, arr, turn)
    pos = pos.to_i - 1
      if turn
        arr[pos] = player1.symbol
      else 
        arr[pos] = player2.symbol
      end
  end

  def did_win?(board)
    if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
      true
    elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
      true
    elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
      true
    elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
      true
    elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
      true
    elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
      true
    elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
      true
    elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
      true
    end
  end

  def did_draw?(board)
    if board.include?(' ') == false
      true
    end
  end
end

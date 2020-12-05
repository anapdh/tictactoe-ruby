# rubocop:disable Style/RedundantReturn
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/AbcSize
# Class to initialize game.

require_relative './player'
require_relative './rules'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = Player.new(player1, 'X')
    @player2 = Player.new(player2, 'O')
  end

  def valid?(pos)
    pos = pos.to_i
    return true if pos < 10 && pos.positive? && pos != 0 && pos.is_a?(Integer)

    return false
  end

  def free?(pos, arr)
    pos = pos.to_i - 1
    arr.each_with_index do |num, i|
      return true if i == pos && num == ' '
      return false if i == pos && num != ' '
    end
  end

  def move(pos, arr, turn)
    pos = pos.to_i - 1
    arr[pos] = turn == true ? player1.symbol : player2.symbol
  end

  def did_win?(board)
    return true if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
    return true if board[3] == board[4] && board[4] == board[5] && board[3] != ' '
    return true if board[6] == board[7] && board[7] == board[8] && board[6] != ' '
    return true if board[0] == board[3] && board[3] == board[6] && board[0] != ' '
    return true if board[1] == board[4] && board[4] == board[7] && board[1] != ' '
    return true if board[2] == board[5] && board[5] == board[8] && board[2] != ' '
    return true if board[0] == board[4] && board[4] == board[8] && board[0] != ' '
    return true if board[2] == board[4] && board[4] == board[6] && board[2] != ' '
  end

  def did_draw?(board)
    return true if board.include?(' ') == false
  end
end

# rubocop:enable Style/RedundantReturn
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize

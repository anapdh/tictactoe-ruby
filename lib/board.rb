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

  def winning_condition
    game_on = true
    while game_on
      player1.play(board)
      new_board_game.display(board)
      if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
        game_on = false
        break
      elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
        game_on = false
        break
      elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
        game_on = false
        break
      elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
        game_on = false
        break
      elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
        game_on = false
        break
      elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
        game_on = false
        break
      elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
        game_on = false
        break
      elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
        game_on = false
        break
      end
      if board.include?(' ') == false
        #GAME OVER
        break
      end
      player2.play(board)
      new_board_game.display(board)
      if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
        game_on = false
        break
      elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
        game_on = false
        break
      elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
        game_on = false
        break
      elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
        game_on = false
        break
      elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
        game_on = false
        break
      elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
        game_on = false
        break
      elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
        game_on = false
        break
      elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
        game_on = false
        break
      end
      if board.include?(' ') == false
        #GAME OVER
        break
      end
    end
  end
end

# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/CyclomaticComplexity

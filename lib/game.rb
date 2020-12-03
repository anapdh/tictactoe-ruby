# Class for game logic
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
def game(player1, player2, board_obj, board)
  game_on = true
  while game_on
    player1.play(board)
    board_obj.display(board)

    if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
      game_on = false
      puts "Congratulations #{player1.name}, you won!"
      break
    end
    if board.include?(' ') == false
      puts 'GAME OVER!!!'
      break
    end

    player2.play(board)
    board_obj.display(board)

    if board[0] == board[1] && board[1] == board[2] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[3] == board[4] && board[4] == board[5] && board[3] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[6] == board[7] && board[7] == board[8] && board[6] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[0] == board[3] && board[3] == board[6] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[1] == board[4] && board[4] == board[7] && board[1] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[2] == board[5] && board[5] == board[8] && board[2] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[0] == board[4] && board[4] == board[8] && board[0] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    elsif board[2] == board[4] && board[4] == board[6] && board[2] != ' '
      game_on = false
      puts "Congratulations #{player2.name}, you won!"
      break
    end
    if board.include?(' ') == false
      puts 'GAME OVER!!!'
      break
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity

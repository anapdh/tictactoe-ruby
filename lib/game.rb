# Class for game logic

def game(player1,player2,boardC, board)
  game_on = true
  while game_on
    player1.play(board)
    boardC.display(board)
    player2.play(board)
    boardC.display(board)
  end
end


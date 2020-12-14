require_relative '../lib/game.rb'

describe Game do

  let(:player1) { 'Name1' }
  let(:player2) { 'Name2' }
  # let(:symbol)
  let(:game) { Game.new(player1, player2) }


  context 'initialize' do

    it 'Start the player 1' do
      expect(player1).to eql ('Name1')
      expect(game.player1.symbol).to eql ('X')
    end

    it 'Start the player 2' do
      expect(player2).to eql ('Name2')
      expect(game.player2.symbol).to eql ('O')
    end

  end
end
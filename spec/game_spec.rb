require_relative './lib/game.rb'

describe Game do

  let(:player1) { 'Name1' }
  let(:player2) { 'Name2' }
  let(:game) { Game.new(player1, player2) }


  context 'initialize' do

    it 'Start the player 1 and player 2' do
    expect(player.new).to eql ("Name1" "X")
    expect(player.new).to eql ("Name2" "0")
  end
end
require_relative '../lib/player'

describe Player do
  let(:name) { 'Player' }
  let(:symbol) { 'Symbol' }
  let(:player) { Player.new(name, symbol) }

  context 'initialize' do
    it "Start the Player's name" do
      expect(player.name).to eql('Player')
    end

    it "Start the player's symbol" do
      expect(player.symbol).to eql('Symbol')
    end
  end
end

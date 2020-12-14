require_relative '../lib/game.rb'

describe Game do
  let (:arr1) {[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']}
  let (:arr2) {[' ', ' ', ' ', 'O', ' ', 'X', ' ', 'O', 'X']}
  let(:player1) { 'Name1' }
  let(:player2) { 'Name2' }
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

  context 'valid?' do
    it 'checks valid position' do
      expect(game.valid?(6)).to eql(true)    
      expect(game.valid?(11)).to eql(false)
      expect(game.valid?(-2)).to eql(false)
      expect(game.valid?('q')).to eql(false)
      expect(game.valid?('q')).to eql(false)
    end
  end

  context 'free?' do

   it 'check if the position is free' do
    expect(game.free?(2,arr1)).to eql(true)
    expect(game.free?(8,arr2)).to eql(false)
    expect(game.free?(4,arr2)).to eql(false)
    expect(game.free?('r',arr1)).to eql(arr1)
    expect(game.free?('r',arr2)).to eql(arr2)
    expect(game.free?(-2,arr1)).to eql(arr1)
   end
  end

  context 'move'
  it 'checks the players turns to fill symbols'
  expect (game.move(1,))
  def move(pos, arr, turn)
    pos = pos.to_i - 1
    arr[pos] = turn == true ? player1.symbol : player2.symbol
  end

end
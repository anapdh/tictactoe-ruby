#!/usr/bin/env ruby
# rubocop:disable Style/RedundantReturn
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/AbcSize

require_relative '../lib/game'

describe Game do
  let(:arr1) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
  let(:arr2) { [' ', ' ', ' ', 'O', ' ', 'X', ' ', 'O', 'X'] }
  let(:player1) { 'Name1' }
  let(:player2) { 'Name2' }
  let(:game) { Game.new(player1, player2) }

  context 'initialize' do
    it 'Start the player 1' do
      expect(player1).to eql('Name1')
      expect(game.player1.symbol).to eql('X')
    end

    it 'Start the player 2' do
      expect(player2).to eql('Name2')
      expect(game.player2.symbol).to eql('O')
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
      expect(game.free?(2, arr1)).to eql(true)
      expect(game.free?(8, arr2)).to eql(false)
      expect(game.free?(4, arr2)).to eql(false)
      expect(game.free?('r', arr1)).to eql(arr1)
      expect(game.free?('r', arr2)).to eql(arr2)
      expect(game.free?(-2, arr1)).to eql(arr1)
    end
  end

  context 'move' do
    it 'checks the players turns to fill symbols' do
      expect(game.move(1, arr1, true)).to eql(game.player1.symbol)
      expect(game.move(3, arr2, false)).to eql(game.player2.symbol)
      expect(game.move(8, arr1, true)).to eql(game.player1.symbol)
      expect(game.move(4, arr2, false)).to eql(game.player2.symbol)
      expect(game.move('rwfffaa', arr2, false)).to eql(game.player2.symbol)
      expect(game.move('dwafffa', 'jdjas', false)).to eql(game.player2.symbol)
    end
  end

  context 'winning_conditions' do
    it 'checks if the players symbols are the same in 1st, 2nd or 3rd row to win the game' do
      game.move(1, arr1, true)
      game.move(2, arr1, true)
      game.move(3, arr1, true)
      expect(game.did_win?(arr1)).to eql(true)
    end
    it 'checks if the players symbols are the same in 1st, 2nd or 3rd column to win the game' do
      game.move(8, arr1, true)
      game.move(5, arr1, true)
      game.move(2, arr1, true)
      expect(game.did_win?(arr1)).to eql(true)
    end
    it 'checks if the players symbols are the same in the diagonals to win the game' do
      game.move(7, arr1, true)
      game.move(5, arr1, true)
      game.move(3, arr1, true)
      expect(game.did_win?(arr1)).to eql(true)
    end
    it 'checks if the players symbols are NOT the same in the diagonals, returning nil' do
      game.move(7, arr1, true)
      game.move(5, arr1, false)
      game.move(3, arr1, true)
      expect(game.did_win?(arr1)).to eql(nil)
    end
  end

  context 'draw_condition' do
    let(:arr1) { %w[X 0 X 0 0 X X 0 0] }
    it "check if there's no more empty spaces on the board, so it's a draw" do
      expect(game.did_draw?(arr1)).to eql(true)
    end
    let(:arr2) { [' ', '0', 'X', '0', ' ', 'X', 'X', '0', '0'] }
    it "check if there's IS empty spaces on the board" do
      expect(game.did_draw?(arr2)).to eql(nil)
    end
  end
end

# rubocop:enable Style/RedundantReturn
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize

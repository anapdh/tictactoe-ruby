# rubocop:disable Layout/EndOfLine
# rubocop:disable Style/Documentation

class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
# rubocop:enable Layout/EndOfLine
# rubocop:enable Style/Documentation
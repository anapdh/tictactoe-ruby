# Class for Players
# rubocop:disable Metrics/PerceivedComplexity
class Player
  attr_accessor :name, :symbol
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

# rubocop:enable Metrics/PerceivedComplexity

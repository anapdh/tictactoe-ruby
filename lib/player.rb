# Class for Players
# rubocop:disable Metrics/PerceivedComplexity
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def play(arr)
    puts " #{name} is playing... \n CHOOSE YOUR POSITION! \n "
    pos = gets.chomp.to_i
    if pos < 10
      pos -= 1
      arr.each_with_index do |num, i|
        if i == pos && num == ' '
          arr[i] = @symbol
        elsif i == pos && num != ' '
          puts " \n POSITION UNAVAILABLE!! Please, try again. \n "
          play(arr)
        end
      end
    else
      puts " \n INVALID NUMBER!! Please, try again. \n "
      play(arr)
    end
  end
end
# rubocop:enable Metrics/PerceivedComplexity

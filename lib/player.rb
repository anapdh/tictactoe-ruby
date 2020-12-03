# Class for Players
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def play(arr)
    puts " #{name} is playing \n CHOOSE YOUR POSITION!"
    pos = gets.chomp.to_i
    if pos < 10
      pos -= 1
      arr.each_with_index do |num, i|
        if i == pos && num == ' '
          arr[i] = @symbol
        elsif i == pos && num != ' '
          puts 'POSITION UNAVAILABLE!! TRY AGAIN!!'
          play(arr)
        end
      end
    else
      puts 'Invalid number!! Try Again!'
      play(arr)
    end
  end

end

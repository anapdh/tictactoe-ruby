# Class for Players
# rubocop:disable Metrics/PerceivedComplexity
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  # def play(arr)
  #   #puts " #{name} is playing... \n CHOOSE YOUR POSITION! \n "
  #   # pos = gets.chomp.to_i
  #   if pos < 10 && pos > 0 && pos.is_a?(Integer)
  #     pos -= 1
  #     arr.each_with_index do |num, i|
  #       if i == pos && num == ' '
  #         arr[i] = @symbol
  #       elsif i == pos && num != ' '
  #         #puts " \n POSITION UNAVAILABLE!! Please, try again. \n "
  #         play(arr)
  #       end
  #     end
  #   else
  #     #puts " \n INVALID NUMBER!! Please, try again. \n "
  #     play(arr)
  #   end
  # end

  # 1st method:
  # move method - get the position player want to play.

    def move(pos)
      arr.each_with_index do |num, i|
        if i == pos && num == ' '
        arr[i] = symbol
        end
      end
    end

  # 2nd method:
  # checks if position is available

  def checks(pos)
    arr.each_with_index do |num, i|
      if i == pos && symbol 
        false
  end


  # 3rd method:
  # checks if number given is invalis or not

  def invalid(pos)
    arr.each_with_index do |num, i|
      if pos < 10 && pos.positive? && pos.is_a?(Integer)
        false
      end
    end   
  end

end
# rubocop:enable Metrics/PerceivedComplexity

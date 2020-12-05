# Class to initialize RULES

class Rules
  attr_reader :rules

  def initialize
    @rules = rules
  end

  def display_rules
    " \n === WELCOME TO TIC TAC TOE ===
    Game Rules:
    1. Type the name of Player1, which will be signed to the symbol 'X';
    2. Type the name of Player2, which will be signed to the symbol 'O';
    3. Now the first player ('X') can select any space to insert the value,
    follow your number keyboard to compare the available spaces:
            7 | 8 | 9
            -----------
            4 | 5 | 6	--> The number in the virtual board will be represented by the number on your keyboard.
            -----------
            1 | 2 | 3
    4. Remember not to insert any invalid number (above 9)
    or repeat the same number that is already taken by a symbol (no cheating!!);
    5. The winner will be the first player/symbol to complete a sequence of a row, column, or diagonal.
    Good luck and have fun! :) \n "
  end
end

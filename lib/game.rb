# Created by R.Harris

require_relative 'board'

class Game
  #Create a new board or a blank game
  def initialize(n_board = nil)
    @my_board = n_board
  end
  
  #Returns the game board
  def board
    return @my_board
  end
  
  #Returns the value of is the game is over
  def over?
	if @my_board==nil
	  return false
	end
	if @my_board.full?
	  return true
	end
  end

  #Returns if this game is a tie
  def tie?
   puts "test 1"
	if @my_board.full?
	  return true
	else
	  return false
	end
  end

  #Returns the winner (if there is one)
  def winner
    result = @my_board.to_s
    if result["x|x|x"]
	  return :x
	end
    if result["o|o|o"]
	  return :o
	end
	return nil
  end

end

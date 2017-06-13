class Board # It creates the Game Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3) { Square.new.value } }
  end
end

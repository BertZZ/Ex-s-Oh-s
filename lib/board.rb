require_relative 'square'

class Board # It creates the Game Board
  attr_accessor :board

  def initialize
    @board = Array.new(9) { Square.new.value }
  end
end

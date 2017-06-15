class Turn
  attr_reader :square_number, :marker

  def initialize(number, current_player, board)
    @square_number = number - 1
    @marker = current_player.marker
    @board = board
  end

  def changeValue
    if @board.board[@square_number] == ' '
      @board.board[@square_number] = @marker
    else
      raise 'This square is already claimed'
    end
  end

  def takeTurn
    changeValue
  end
end

class Turn
  attr_reader :square_number, :marker
  attr_accessor :value1, :value2

  def initialize(number, current_player)
    @square_number = number
    @value1 = 0
    @value2 = 0
    @marker = current_player.marker
  end

  def numberConverter
    if @square_number == 1
      @value1 = 0
      @value2 = 0
    elsif @square_number == 2
      @value1 = 0
      @value2 = 1
    elsif @square_number == 3
      @value1 = 0
      @value2 = 2
    elsif @square_number == 4
      @value1 = 1
      @value2 = 0
    elsif @square_number == 5
      @value1 = 1
      @value2 = 1
    elsif @square_number == 6
      @value1 = 1
      @value2 = 2
    elsif @square_number == 7
      @value1 = 2
      @value2 = 0
    elsif @square_number == 8
      @value1 = 2
      @value2 = 1
    elsif @square_number == 9
      @value1 = 2
      @value2 = 2
    else
      puts 'Please pick a number between 1 and 9'
    end
  end

  def changeValue(board)
    board.board[@value1][@value2] = @marker
  end
end

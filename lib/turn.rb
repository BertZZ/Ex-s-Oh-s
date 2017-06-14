class Turn
  attr_reader :squareNumber, :marker
  attr_accessor :value1, :value2

  def initialize(number, currentPlayer)
    @squareNumber = number
    @value1 = 0
    @value2 = 0
    @marker = currentPlayer.marker
  end

  def numberConverter()
    if @squareNumber == 1
      @value1 = 0
      @value2 = 0
    elsif @squareNumber == 2
      @value1 = 0
      @value2 = 1
    elsif @squareNumber == 3
      @value1 = 0
      @value2 = 2
    elsif @squareNumber == 4
      @value1 = 1
      @value2 = 0
    elsif @squareNumber == 5
      @value1 = 1
      @value2 = 1
    elsif @squareNumber == 6
      @value1 = 1
      @value2 = 2
    elsif @squareNumber == 7
      @value1 = 2
      @value2 = 0
    elsif @squareNumber == 8
      @value1 = 2
      @value2 = 1
    elsif @squareNumber == 9
      @value1 = 2
      @value2 = 2
    else
      puts "Please pick a number between 1 and 9"
    end
  end
end

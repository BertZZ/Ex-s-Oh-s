class Turn
  attr_reader :squareNumber, :marker
  attr_accessor :value1, :value2

  def initialize(number, currentPlayer)
    @squareNumber = number
    @value1 = ' '
    @value2 = ' '
    @marker = currentPlayer.marker
  end
end

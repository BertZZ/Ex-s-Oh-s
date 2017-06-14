class Game #It runs the game
  attr_reader :player1, :player2, :players
  attr_accessor :currentPlayer, :otherPlayer, :board

  def initialize(player1Name, player1Marker, player2NAme, player2Marker)
    @player1 = Player.new(player1Name, player1Marker)
    @player2 = Player.new(player2NAme, player2Marker)
    @players = [@player1, @player2].shuffle
    @currentPlayer = @players[0]
    @otherPlayer = @players[1]
    @board = Board.new
    @printer = BoardPrinter.new

  end

  def printBoard
    @printer.print(@board)
  end

  # def claimSquare(number)
  #   turn = Turn.new(number, @currentPlayer)
  #   turn.takeTurn This should play through the whole turn 
  # end
end

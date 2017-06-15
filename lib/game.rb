class Game # It runs the game
  attr_reader :player1, :player2, :players
  attr_accessor :current_player, :other_player, :board

  def initialize(player1_name, player1_marker, player2_name, player2_marker)
    @player1 = Player.new(player1_name, player1_marker)
    @player2 = Player.new(player2_name, player2_marker)
    @players = [@player1, @player2].shuffle
    @current_player = @players[0]
    @other_player = @players[1]
    @board = Board.new
    @printer = BoardPrinter.new
  end

  def printBoard
    @printer.print(@board)
  end

  def endTurn
    @current_player , @other_player = @other_player, @current_player
  end
  # def claimSquare(number)
  #   turn = Turn.new(number, @current_player)
  #   turn.takeTurn This should play through the whole turn
  # end
end

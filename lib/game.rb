require_relative 'turn'

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
    @checker = Checker.new
    printBoard
    printCurrentPlayer
  end

  def printBoard
    @printer.print(@board)
  end

  def printCurrentPlayer
    @printer.printPlayer(@current_player)
  end

  def endTurn
    @current_player, @other_player = @other_player, @current_player
  end

  def winner?
    @checker.is_winner?(@board, @current_player.marker)
  end

  def draw?
    @checker.is_draw?(@board)
  end

  def drawMessage
    @printer.printDraw
  end

  def gameOver
    @printer.printWinner(@current_player)
  end

  def claimSquare(number)
    if number > 9
      raise 'Please enter a valid square number'
    else
      turn = Turn.new(number, @current_player, @board)
      turn.takeTurn
      if draw?
        printBoard
        drawMessage
      elsif winner?
        printBoard
        gameOver
      else
        endTurn
        printBoard
        printCurrentPlayer
      end
    end
  end
end

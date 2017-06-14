require_relative 'player'
class Game
  attr_reader :player1, :player2

  def initialize(player1Name, player1Marker, player2NAme, player2Marker)
    @player1 = Player.new(player1Name, player1Marker)
    @player2 = Player.new(player2NAme, player2Marker)
  end
end

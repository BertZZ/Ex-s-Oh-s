class Player # It makes Players for the Game
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

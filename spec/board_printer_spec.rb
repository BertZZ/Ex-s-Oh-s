require 'board_printer'
require 'board'

describe BoardPrinter do
  subject(:boardprinter) { described_class.new }
  it { is_expected.to be_a BoardPrinter }

  describe '#print' do
    it 'Prints the game board to the console' do
      board = Board.new
      expect { subject.print(board) }.to output.to_stdout
    end
  end

  describe '#printPlayer' do
    it 'Prints the name of the player whose turn it is' do
      player = Player.new("Bertie", "X")
      expect { subject.printPlayer(player) }.to output("It is Bertie's Turn. Claim a square by typing game.claimSquare(number)\n").to_stdout
    end
  end

  describe '#printWinner' do
    it 'Prints a message of congratulations to the winner of the game' do
      player = Player.new("Bertie", "X")
      expect { subject.printWinner(player) }.to output("Congratulations Bertie you won\n").to_stdout
    end
  end

  describe '#printDraw' do
    it 'Prints the draw message' do
      expect { subject.printDraw }.to output("The game was a Draw. Better luck next time\n").to_stdout
    end
  end
end

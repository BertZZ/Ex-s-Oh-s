require 'board_printer'

describe BoardPrinter do
  subject(:board) { described_class.new }
  it { is_expected.to be_a BoardPrinter }

  describe '#print' do
    it 'Prints the game board to the console' do
      board = Board.new
      expect { subject.print(board.board) }.to output().to_stdout
 end
end

end

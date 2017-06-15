require 'turn'

describe Turn do
  let(:player) { double name: 'Bertie', marker: 'X' }
  before (:each) do
    @board = Board.new
  end
  subject(:turn) { described_class.new(5, player, @board) }
  it { is_expected.to be_a Turn }

  it 'is initalized with a number between 1-9' do
    expect(subject.square_number).to eq(4)
  end

  it 'knows the current Players mark' do
    expect(subject.marker).to eq('X')
  end

  describe '#changeValue' do
    it 'changes the value of the selected square to the current players marker' do
      turn.changeValue
      expect(@board.board[4]).to eq('X')
    end

    it 'Throws an error if the square already has a marker in' do
      turn.changeValue
      expect{ turn.changeValue }.to raise_error('This square is already claimed')
    end
  end

  describe '#takeTurn' do
    it'Plays through a whole game turn' do
      turn.takeTurn
      expect(@board.board[4]).to eq('X')
    end
  end
end

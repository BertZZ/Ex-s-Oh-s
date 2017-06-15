require 'turn'

describe Turn do
  let(:player) { double name: 'Bertie', marker: 'X' }
  subject(:turn) { described_class.new(5, player) }
  it { is_expected.to be_a Turn }

  it 'is initalized with a number between 1-9' do
    expect(subject.square_number).to eq(5)
  end

  it 'has empty spaces for values to be added into' do
    expect(subject.value1).to eq(0)
    expect(subject.value2).to eq(0)
  end

  it 'knows the current Players mark' do
    expect(subject.marker).to eq('X')
  end

  describe '#numberConverter' do
    it 'Converts a number into the array reference of that square' do
      turn.numberConverter
      expect(subject.value1).to eq(1)
      expect(subject.value2).to eq(1)
    end
  end
  describe '#changeValue' do
    it 'changes the value of the selected square to the current players marker' do
      board = Board.new
      turn.numberConverter
      turn.changeValue(board)
      expect(board.board[1][1]).to eq('X')
    end
  end
end

require 'turn'

describe Turn do
  let(:player) { double name: 'Bertie', marker:'X'}
  subject(:turn) { described_class.new(5, player) }
  it { is_expected.to be_a Turn}

  it 'is initalized with a number between 1-9' do
    expect(subject.squareNumber).to eq(5)
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
      turn.numberConverter()
      expect(subject.value1).to eq(1)
      expect(subject.value2).to eq(1)
    end
  end
end

require 'turn'

describe Turn do
  let(:player) { double name: 'Bertie', marker:'X'}
  subject(:Turn) { described_class.new('5', player) }
  it { is_expected.to be_a Turn}

  it 'is initalized with a number between 1-9' do
    expect(subject.squareNumber).to eq('5')
  end

  it 'has empty spaces for values to be added into' do
    expect(subject.value1).to eq(' ')
    expect(subject.value2).to eq(' ')
  end

  it 'knows the current Players mark' do
    expect(subject.marker).to eq('X')
  end

end

require 'board'

describe Board do
  subject(:board) { described_class.new }
  it { is_expected.to be_a Board }

  it 'is initialised with an empty game board' do
    expect(subject.board).to eq([
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' ']
      ])
  end
end

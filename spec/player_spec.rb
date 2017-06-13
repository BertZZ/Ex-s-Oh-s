require 'player'

describe Player do
  subject(:transaction) { described_class.new('Bertie', 'X') }
  it { is_expected.to be_a Player }

  it 'Is initialised with the players name' do
    expect(subject.name).to eq('Bertie')
  end

  it 'Is initialised with the players marker' do
    expect(subject.marker).to eq('X')
  end
  
end

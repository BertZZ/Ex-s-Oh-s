require 'square'

describe Square do
  subject(:square) { described_class.new }
  it { is_expected.to be_a Square }

  it 'Is initialised with an empty value' do
    expect(subject.value).to eq(' ')
  end
end

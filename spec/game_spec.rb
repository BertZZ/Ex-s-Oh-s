require 'game'

describe Game do
  subject(:game) { described_class.new('Bertie', 'X', 'Adam', 'O') }
  it { is_expected.to be_a Game}

  it 'is initialized with 2 players' do
    expect(game.player1).to be_a Player
    expect(game.player2).to be_a Player
  end

  it 'Has those players information stored' do
    expect(game.player1.name).to eq("Bertie")
    expect(game.player1.marker).to eq("X")
    expect(game.player2.name).to eq("Adam")
    expect(game.player2.marker).to eq("O")
  end
end

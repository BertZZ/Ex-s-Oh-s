require 'game'

describe Game do
  subject(:game) { described_class.new('Bertie', 'X', 'Adam', 'O') }
  it { is_expected.to be_a Game }

  it 'is initialized with 2 players' do
    expect(game.player1).to be_a Player
    expect(game.player2).to be_a Player
  end

  it 'Has those players information stored' do
    expect(game.player1.name).to eq('Bertie')
    expect(game.player1.marker).to eq('X')
    expect(game.player2.name).to eq('Adam')
    expect(game.player2.marker).to eq('O')
  end

  it 'Picks a player to go first' do
    expect(game.current_player).to be_a Player
  end

  it 'Creates a board' do
    expect(game.board).to be_a Board
  end

  describe '#endTurn' do
    it 'Swaps the current player and other player' do
      player = game.current_player
      game.endTurn
      expect(game.other_player).to eq(player)
    end
  end
end

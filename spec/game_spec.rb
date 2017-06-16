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

  describe '#claimSquare' do
    it 'Claims a square on the board' do
      game.claimSquare(6)
      expect(game.board.board[5]).not_to eq(' ')
    end

    it 'Throws an error if a number higher than 9 is entered' do #The Tim clause
      expect{ game.claimSquare(34) }.to raise_error('Please enter a valid square number')
    end
  end
  describe '#winner' do
    it 'Checks if there is a winner' do
      game.board.board[0] = game.current_player.marker
      game.board.board[3] = game.current_player.marker
      game.board.board[6] = game.current_player.marker
      expect(game.winner?).to be_truthy
    end
  end
end

require 'checker'
require 'board'

describe Checker do
  subject(:checker) { described_class.new }
  it { is_expected.to be_a Checker }

  describe '#is_row?' do
    it 'Returns true if one player has claimed a row' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[0] = game.current_player.marker
      board.board[1] = game.current_player.marker
      board.board[2] = game.current_player.marker
      expect(subject.is_row?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns true if one player has claimed a different row' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[6] = game.current_player.marker
      board.board[7] = game.current_player.marker
      board.board[8] = game.current_player.marker
      expect(subject.is_row?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns false if a player has not claimed a row' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[3] = game.current_player.marker
      board.board[4] = game.current_player.marker
      board.board[0] = game.current_player.marker
      expect(subject.is_row?(board, game.current_player.marker)).to be_falsy
    end
  end

  describe '#is_column?' do
    it 'Returns true if one player has claimed a column' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[0] = game.current_player.marker
      board.board[3] = game.current_player.marker
      board.board[6] = game.current_player.marker
      expect(subject.is_column?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns true if one player has claimed a different column' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[2] = game.current_player.marker
      board.board[5] = game.current_player.marker
      board.board[8] = game.current_player.marker
      expect(subject.is_column?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns false if a player has not claimed a column' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[3] = game.current_player.marker
      board.board[4] = game.current_player.marker
      board.board[0] = game.current_player.marker
      expect(subject.is_column?(board, game.current_player.marker)).to be_falsy
    end
  end
  describe '#is_diagonal?' do
    it 'Returns true if one player has claimed a diagonal' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[0] = game.current_player.marker
      board.board[4] = game.current_player.marker
      board.board[8] = game.current_player.marker
      expect(subject.is_diagonal?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns true if one player has claimed a different diagonal' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[2] = game.current_player.marker
      board.board[4] = game.current_player.marker
      board.board[6] = game.current_player.marker
      expect(subject.is_diagonal?(board, game.current_player.marker)).to be_truthy
    end
    it 'Returns false if a player has not claimed a column' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[3] = game.current_player.marker
      board.board[4] = game.current_player.marker
      board.board[0] = game.current_player.marker
      expect(subject.is_diagonal?(board, game.current_player.marker)).to be_falsy
    end
  end
  describe '#is_winner' do
    it 'Returns true is there is a winner via row' do
      board = Board.new
      game = Game.new('Bertie', 'X', 'Adam', 'O')
      board.board[0] = game.current_player.marker
      board.board[1] = game.current_player.marker
      board.board[2] = game.current_player.marker
      expect(subject.is_winner?(board, game.current_player.marker)).to be_truthy
    end
  end

  describe '#is_draw?' do
    it "Returns true if there is a draw" do
      board = Board.new
      board.board[0] = 'X'
      board.board[1] = 'O'
      board.board[2] = 'O'
      board.board[3] = 'O'
      board.board[4] = 'X'
      board.board[5] = 'X'
      board.board[6] = 'X'
      board.board[7] = 'X'
      board.board[8] = 'O'
      expect(subject.is_draw?(board)).to be_truthy
    end
    it 'Returns false when there is not a draw' do
      board = Board.new
      board.board[0] = 'X'
      board.board[1] = 'O'
      expect(subject.is_draw?(board)).to be_falsy
    end
  end
end

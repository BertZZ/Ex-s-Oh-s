class Checker
  def is_row?(board, marker)
    if [board.board[0],board.board[1],board.board[2]].uniq == [marker] || [board.board[3],board.board[4],board.board[5]].uniq == [marker] || [board.board[6],board.board[7],board.board[8]].uniq == [marker]
      true
    else
      false
    end
  end

  def is_column?(board, marker)
    if [board.board[0],board.board[3],board.board[6]].uniq == [marker] || [board.board[1],board.board[4],board.board[7]].uniq == [marker] || [board.board[2],board.board[5],board.board[8]].uniq == [marker]
      true
    else
      false
    end
  end

  def is_diagonal?(board, marker)
    if [board.board[0],board.board[4],board.board[8]].uniq == [marker] || [board.board[2],board.board[4],board.board[6]].uniq == [marker]
      true
    else
      false
    end
  end

  def is_winner?(board, marker)
    is_row?(board, marker) || is_column?(board, marker) || is_diagonal?(board, marker)
  end

  def is_draw?(board)
    i = 0
    board.board.each do |value|
      if value = 'X' || 'O'
        i = i + 1
      end
    end
    if i == 9
      true
    else
      false
    end
  end
end

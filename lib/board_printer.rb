class BoardPrinter

  def print(board)
    puts'        ||         ||       '
    puts"   #{board.board[0][0]}    ||    #{board.board[0][1]}    ||    #{board.board[0][2]}    "
                        puts'        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts"   #{board.board[1][0]}    ||    #{board.board[1][1]}    ||    #{board.board[1][2]}    "
    puts'        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts"   #{board.board[2][0]}    ||    #{board.board[2][1]}    ||    #{board.board[2][2]}    "
    puts'        ||         ||       '
  end
end

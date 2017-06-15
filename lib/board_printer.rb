class BoardPrinter
  def print(board)
    puts "Each square is numbered as such 1,2,3
                                4,5,6
                                7,8,9"
    puts '        ||         ||       '
    puts "   #{board.board[0][0]}    ||    #{board.board[0][1]}    ||    #{board.board[0][2]}    "
    puts '        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts "   #{board.board[1][0]}    ||    #{board.board[1][1]}    ||    #{board.board[1][2]}    "
    puts'        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts "   #{board.board[2][0]}    ||    #{board.board[2][1]}    ||    #{board.board[2][2]}    "
    puts '        ||         ||       '
  end
end

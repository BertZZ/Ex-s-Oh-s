class BoardPrinter
  def print(board)
    puts "Each square is numbered as such 1,2,3
                                4,5,6
                                7,8,9"
    puts '        ||         ||       '
    puts "   #{board.board[0]}    ||    #{board.board[1]}    ||    #{board.board[2]}    "
    puts '        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts "   #{board.board[3]}    ||    #{board.board[4]}    ||    #{board.board[5]}    "
    puts'        ||         ||       '
    puts'  ==========================='
    puts'        ||         ||       '
    puts "   #{board.board[6]}    ||    #{board.board[7]}    ||    #{board.board[8]}    "
    puts '        ||         ||       '
  end

  def printPlayer(player)
    puts "It is #{player.name}'s Turn. Claim a square by typing game.claimSquare(number)"
  end
end

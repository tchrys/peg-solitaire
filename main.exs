# board = BoardInit.initBoard(:english)
board = BoardInit.initBoard(:triangle)
# board = BoardInit.initBoard(:diamond)


res = Board.dfs(board)
res = Enum.reverse(res)

Enum.reduce(res, board, fn ({dir, y, x}, board) -> Board.printAndMove(board, dir, y, x) end)

Enum.each(res, fn {dir, y, x} -> IO.puts(Atom.to_string(dir) <> " " <> Integer.to_string(y) <> " " <> Integer.to_string(x)) end)
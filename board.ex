defmodule Board do

    def printBoard(board) do
        [x1, x2] = getBoardXBounds(board)
        [y1, y2] = getBoardYBounds(board)
        y2..y1
            |> Enum.map(fn y -> getPositionsOnRow(y, board) end)
            |> Enum.map(fn lst -> Enum.map(lst, fn pos -> pos.x end) end)
            |> Enum.map(fn xLst -> createRowString(xLst, x1, x2) end)
            |> Enum.each(fn s -> IO.puts(s) end)
    end

    def createBoardEncoding(board) do
        traversals = [
            Traversal.get1stTraversal, Traversal.get2ndTraversal,
            Traversal.get3rdTraversal, Traversal.get4thTraversal,
            Traversal.get5thTraversal, Traversal.get6thTraversal,
            Traversal.get7thTraversal, Traversal.get8thTraversal
        ]
        encodings = Enum.reduce(traversals, [], fn tr, acc -> [traversalToString(board, tr) | acc] end)
        maxEncoding = Enum.at(encodings, 0)
        Enum.reduce(encodings, maxEncoding, fn enc, maxEncoding -> if enc > maxEncoding, do: enc, else: maxEncoding end)
        maxEncoding
    end

    def traversalToString(board, traversal) do
        traversal
            |> Enum.map(fn {x, y} -> if positionFilled?(board, y, x), do: "1", else: "0" end)
            |> Enum.join("")
    end

    def getPositionsOnRow(row, board) do
        Enum.filter(board, fn pos -> pos.y == row and pos.filled end)
    end

    def getPositionsOnCol(col, board) do
        Enum.filter(board, fn pos -> pos.x == col and pos.filled end)
    end

    def positionFilled?(board, row, col) do
        length(Enum.filter(board, fn pos -> pos.x == col and pos.y == row and pos.filled end)) > 0
    end

    def getPosFilled(board) do
        Enum.filter(board, fn pos -> pos.filled end)
    end

    def getPieceAt(board, row, col) do
        Enum.at(Enum.filter(board, fn pos -> pos.x == col and pos.y == row and pos.filled end), 0)
    end

    def getPositionAt(board, row, col) do
        Enum.at(Enum.filter(board, fn pos -> pos.x == col and pos.y == row end), 0)
    end

    def positionExists?(board, row, col) do
        length(Enum.filter(board, fn pos -> pos.x == col and pos.y == row end)) > 0
    end


    def excludePos(board, row, col) do
        Enum.filter(board, fn pos -> pos.x != col or pos.y != row end)
    end

    def getBoardXBounds(board) do
        mx = Enum.map(board, fn pos -> pos.x end) |> Enum.max
        minimum = Enum.map(board, fn pos -> pos.x end) |> Enum.min
        [minimum, mx]
    end
    
    def getBoardYBounds(board) do
        mx = Enum.map(board, fn pos -> pos.y end) |> Enum.max
        minimum = Enum.map(board, fn pos -> pos.y end) |> Enum.min
        [minimum, mx]
    end

    def createRowString(xs, mn, mx) do
        mn..mx
        |> Enum.map(fn crt -> if Enum.member?(xs, crt), do: "o", else: "□" end)
        |> Enum.join("")
    end

    def gameFinished?(board), do: length(Enum.filter(board, fn pos -> pos.filled end)) == 1

    def togglePos(board, row, col) do
        pos = getPositionAt(board, row, col)
        posChanged = %{pos | filled: !pos.filled}
        [posChanged | excludePos(board, row, col)]
    end

    def canMoveNorth(_, crtPos) when crtPos.north == false, do: false
    def canMoveNorth(board, crtPos) do
        cond do
            positionFilled?(board, crtPos.y + 1, crtPos.x) == false -> false
            true ->
                posNorth = getPieceAt(board, crtPos.y + 1, crtPos.x)
                posNorth.north and !positionFilled?(board, crtPos.y + 2, crtPos.x)
        end
    end

    def canMoveSouth(_, crtPos) when crtPos.south == false, do: false
    def canMoveSouth(board, crtPos) do
        cond do
            positionFilled?(board, crtPos.y - 1, crtPos.x) == false -> false
            true ->
                posSouth = getPieceAt(board, crtPos.y - 1, crtPos.x)
                posSouth.south and !positionFilled?(board, crtPos.y - 2, crtPos.x)
        end

    end

    def canMoveWest(_, crtPos) when crtPos.west == false, do: false
    def canMoveWest(board, crtPos) do
        cond do
            positionFilled?(board, crtPos.y, crtPos.x - 1) == false -> false
            true ->
                posWest = getPieceAt(board, crtPos.y, crtPos.x - 1)
                posWest.west and !positionFilled?(board, crtPos.y, crtPos.x - 2)
        end
        
    end

    def canMoveEast(_, crtPos) when crtPos.east == false, do: false
    def canMoveEast(board, crtPos) do
        cond do
            positionFilled?(board, crtPos.y, crtPos.x + 1) == false -> false
            true ->
                posEast = getPieceAt(board, crtPos.y, crtPos.x + 1)
                posEast.east and !positionFilled?(board, crtPos.y, crtPos.x + 2)
        end
        
    end

    def move(board, :south, y, x), do: togglePos(board, y, x) |> togglePos(y - 1, x) |> togglePos(y - 2, x)
    def move(board, :north, y, x), do: togglePos(board, y, x) |> togglePos(y + 1, x) |> togglePos(y + 2, x)
    def move(board, :east, y, x), do: togglePos(board, y, x) |> togglePos(y, x + 1) |> togglePos(y, x + 2)
    def move(board, :west, y, x), do: togglePos(board, y, x) |> togglePos(y, x - 1) |> togglePos(y, x - 2)

    def printAndMove(board, direction, y, x) do
        printBoard(board)
        IO.puts("###############################")
        move(board, direction, y, x)
    end

    def printAvailableMoves(board) do
        availableMovesOnBoard(board) |> Enum.each(fn {dir, y, x} -> IO.puts(Atom.to_string(dir) <> " " <> Integer.to_string(y) <> " " <> Integer.to_string(x)) end)
    end

    def availableMovesForPos(board, crtPos) do
        allDirections = [
            {:south, canMoveSouth(board, crtPos)},
            {:north, canMoveNorth(board, crtPos)},
            {:west, canMoveWest(board, crtPos)},
            {:east, canMoveEast(board, crtPos)}
        ]
        Enum.reduce(allDirections, [], fn {dir, bool}, acc -> if bool do  [{dir, crtPos.y, crtPos.x} | acc] else acc end end)
    end

    def availableMovesOnBoard(board) do
        getPosFilled(board) |> Enum.map(fn pos -> availableMovesForPos(board, pos) end) |> List.flatten
    end

    def dfs(board) do
        {:ok, pid} = Agent.start_link(fn -> MapSet.new() end)
        dfs_helper(board, [], pid, Enum.shuffle(availableMovesOnBoard(board)))
    end

    def dfs_helper(board, history, pid, availableMoves) do
        size = Agent.get(pid, fn memo -> MapSet.size(memo) end)
        IO.puts(Integer.to_string(length(history)) <> "/" <> Integer.to_string(length(getPosFilled(board))) <> " --- " <> Integer.to_string(size))
        cond do
            gameFinished?(board) ->
                history
            Agent.get(pid, fn memo -> MapSet.member?(memo, createBoardEncoding(board)) end) -> []
            length(availableMoves) == 0 ->
                Agent.update(pid, fn memo -> MapSet.put(memo, createBoardEncoding(board)) end)
                []
            true ->
                {dir, y, x} = hd(availableMoves)
                newBoard = move(board, dir, y, x)
                res = dfs_helper(newBoard, [{dir, y, x} | history], pid, Enum.shuffle(availableMovesOnBoard(newBoard)))
                
                if length(res) > 0 do
                    res
                else
                    dfs_helper(board, history, pid, tl(availableMoves))
                end
        end
    end


end
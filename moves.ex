defmodule Moves do

    def getMoves(:english) do
        [
            {:east, 0, -2},
            {:north, -2, -1},
            {:east, -1, -3},
            {:west, -1, 0},
            {:west, -1, 2},
            {:north, -3, 1},
            {:south, 0, 1},
            {:east, -3, -1},
            {:north, -3, 1},
            {:south, 1, -1},
            {:south, 3, -1},
            {:south, 2, 1},
            {:south, 0, 1},
            {:west, -2, 1},
            {:north, -2, -1},
            {:north, 0, -1},
            {:south, 1, -3},
            {:east, -1, -3},
            {:east, -1, -1},
            {:west, 1, 3},
            {:east, 1, 0},
            {:north, -1, 3},
            {:west, 1, 3},
            {:west, 3, 1},
            {:south, 3, -1},
            {:east, 1, -2},
            {:east, 1, 0},
            {:south, 1, 2},
            {:west, -1, 2},
            {:north, -1, 0},
            {:south, 2, 0}
        ]
    end
end
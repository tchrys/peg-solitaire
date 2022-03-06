defmodule Position do
    defstruct x: 0,
            y: 0,
            filled: false,
            west: false,
            east: false,
            north: false,
            south: false
end
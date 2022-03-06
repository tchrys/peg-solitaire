defmodule Traversal do
    def get1stTraversal do
        3..-3
            |> Enum.map(fn y -> -3..3 |> Enum.map(fn x -> {x, y} end) end) |> List.flatten
    end

    def get2ndTraversal do
        3..-3
            |> Enum.map(fn y -> 3..-3 |> Enum.map(fn x -> {x, y} end) end) |> List.flatten
    end

    def get3rdTraversal do
        -3..3
            |> Enum.map(fn y -> -3..3 |> Enum.map(fn x -> {x, y} end) end) |> List.flatten
    end

    def get4thTraversal do
        -3..3
            |> Enum.map(fn y -> 3..-3 |> Enum.map(fn x -> {x, y} end) end) |> List.flatten
    end

    def get5thTraversal do
        3..-3
            |> Enum.map(fn x -> -3..3 |> Enum.map(fn y -> {x, y} end) end) |> List.flatten
    end

     def get6thTraversal do
        3..-3
            |> Enum.map(fn x -> 3..-3 |> Enum.map(fn y -> {x, y} end) end) |> List.flatten
    end

    def get7thTraversal do
        -3..3
            |> Enum.map(fn x -> -3..3 |> Enum.map(fn y -> {x, y} end) end) |> List.flatten
    end

     def get8thTraversal do
        -3..3
            |> Enum.map(fn x -> 3..-3 |> Enum.map(fn y -> {x, y} end) end) |> List.flatten
    end
end
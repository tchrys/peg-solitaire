defmodule BoardInit do
    
    def initBoard(:english) do
        [
            %Position{x: -1, y: 3, filled: true, north: false, south: true, west: false, east: true},
            %Position{x: 0, y: 3, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: 1, y: 3, filled: true, north: false, south: true, west: true, east: false},
            
            %Position{x: -1, y: 2, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: 2, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 2, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: 1, filled: true, north: false, south: true, west: false, east: true},
            %Position{x: -2, y: 1, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: -1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 1, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: 3, y: 1, filled: true, north: false, south: true, west: true, east: false},

            %Position{x: -3, y: 0, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: -2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: -1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 0, filled: false, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 3, y: 0, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: -1, filled: true, north: true, south: false, west: false, east: true},
            %Position{x: -2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: -1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: 3, y: -1, filled: true, north: true, south: false, west: true, east: false},

            %Position{x: -1, y: -2, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: -2, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -2, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -1, y: -3, filled: true, north: true, south: false, west: false, east: true},
            %Position{x: 0, y: -3, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: 1, y: -3, filled: true, north: true, south: false, west: true, east: false},

        ]
    end

     def initBoard(:triangle) do
        [
            %Position{x: -1, y: 3, filled: false, north: false, south: true, west: false, east: true},
            %Position{x: 0, y: 3, filled: false, north: false, south: true, west: true, east: true},
            %Position{x: 1, y: 3, filled: false, north: false, south: true, west: true, east: false},
            
            %Position{x: -1, y: 2, filled: false, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: 2, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 2, filled: false, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: 1, filled: false, north: false, south: true, west: false, east: true},
            %Position{x: -2, y: 1, filled: false, north: false, south: true, west: true, east: true},
            %Position{x: -1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 1, filled: false, north: false, south: true, west: true, east: true},
            %Position{x: 3, y: 1, filled: false, north: false, south: true, west: true, east: false},

            %Position{x: -3, y: 0, filled: false, north: true, south: true, west: false, east: true},
            %Position{x: -2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: -1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 3, y: 0, filled: false, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: -1, filled: true, north: true, south: false, west: false, east: true},
            %Position{x: -2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: -1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: 3, y: -1, filled: true, north: true, south: false, west: true, east: false},

            %Position{x: -1, y: -2, filled: false, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: -2, filled: false, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -2, filled: false, north: true, south: true, west: true, east: false},

            %Position{x: -1, y: -3, filled: false, north: true, south: false, west: false, east: true},
            %Position{x: 0, y: -3, filled: false, north: true, south: false, west: true, east: true},
            %Position{x: 1, y: -3, filled: false, north: true, south: false, west: true, east: false},

        ]
    end

     def initBoard(:diamond) do
        [
            %Position{x: -1, y: 3, filled: false, north: false, south: true, west: false, east: true},
            %Position{x: 0, y: 3, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: 1, y: 3, filled: false, north: false, south: true, west: true, east: false},
            
            %Position{x: -1, y: 2, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: 2, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 2, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: 1, filled: false, north: false, south: true, west: false, east: true},
            %Position{x: -2, y: 1, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: -1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 1, filled: true, north: false, south: true, west: true, east: true},
            %Position{x: 3, y: 1, filled: false, north: false, south: true, west: true, east: false},

            %Position{x: -3, y: 0, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: -2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: -1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: 0, filled: false, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: 0, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 3, y: 0, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -3, y: -1, filled: false, north: true, south: false, west: false, east: true},
            %Position{x: -2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: -1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 0, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -1, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 2, y: -1, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: 3, y: -1, filled: false, north: true, south: false, west: true, east: false},

            %Position{x: -1, y: -2, filled: true, north: true, south: true, west: false, east: true},
            %Position{x: 0, y: -2, filled: true, north: true, south: true, west: true, east: true},
            %Position{x: 1, y: -2, filled: true, north: true, south: true, west: true, east: false},

            %Position{x: -1, y: -3, filled: false, north: true, south: false, west: false, east: true},
            %Position{x: 0, y: -3, filled: true, north: true, south: false, west: true, east: true},
            %Position{x: 1, y: -3, filled: false, north: true, south: false, west: true, east: false},

        ]
    end
end
module Life
  class Board

    attr_reader :x_lim, :y_lim, :living_cells

    def initialize(board_size, living_array)
      @x_lim = board_size[0]
      @y_lim = board_size[1]
      @living_cells = living_array
    end

    def neighbors(cell)
      n = []
      x = cell[0] - 1; while x < cell[0]+2
        y = cell[1] - 1; while y < cell[1]+2
          n << [x,y] if [x,y] != cell
          y += 1
        end
        x += 1
      end
      n
    end

    def tick
      # calculate_future_state
      # print to STDOUT board
    end

    def draw
      something = ""
      Array.new(@y_lim) do |y|
        row = []
        Array.new(@x_lim) do |x|
          if @living_cells.include?([x,y])
            row << "*"
          else
            row << "0"
          end
        end
        something += "#{row.join("")}\n"
      end
      return something
    end
  end
end


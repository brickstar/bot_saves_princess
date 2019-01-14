class Board
  attr_reader :grid, :pieces
  def initialize(grid)
    @grid   = grid
    @pieces = []
  end
end

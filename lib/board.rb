class Board
  attr_reader :grid, :pieces
  def initialize(grid)
    @grid   = grid
    @pieces = []
    place_piece('m')
    place_piece('p')
  end

  private
  def place_piece(letter)
    coordinates = determine_coordinates(letter, grid)
    @pieces << GamePiece.new(letter, coordinates[0], coordinates[1])
  end

  def determine_coordinates(letter, grid)
    coords = []
    grid.each do |str|
      next if !str.include?(letter)
      coords.push(str.index(letter))
      coords.unshift(grid.index(str))
    end
    coords
  end
end

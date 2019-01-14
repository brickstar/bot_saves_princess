class Board
  attr_reader :grid, :pieces
  def initialize(grid)
    @grid   = grid
    @pieces = []
    place_piece('m')
    place_piece('p')
  end

  def bot
    @pieces.find { |piece| piece.name == "m"}
  end

  def princess
    @pieces.find { |piece| piece.name == "p"}
  end

  private
  def place_piece(letter)
    coordinates = determine_coordinates(letter, grid)
    @pieces << GamePiece.new(letter, coordinates[:row], coordinates[:column])
  end

  def determine_coordinates(letter, grid)
    grid.inject({}) do |acc, str|
      if str.include?(letter)
        acc[:row] = find_row_position(grid, str)
        acc[:column] = find_column_position(letter, str)
      end
      acc
    end
  end

  def find_column_position(letter, str)
    str.index(letter)
  end

  def find_row_position(grid, str)
    grid.index(str)
  end
end

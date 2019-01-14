class GamePiece
  attr_reader :name, :row_position, :column_position
  def initialize(name, row, column)
    @name            = name
    @row_position    = row
    @column_position = column
  end
end

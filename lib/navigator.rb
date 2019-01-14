class Navigator
  attr_reader :board
  def initialize(board)
    @board = board
  end

  def path_to_princess
    column_direction * column_distance.abs + row_direction * row_distance.abs
  end

  private
  def column_distance
    board.bot.column_position - board.princess.column_position
  end

  def row_distance
    board.bot.row_position - board.princess.row_position
  end

  def column_direction
    if column_distance < 0
      "RIGHT\n"
    else
      "LEFT\n"
    end
  end

  def row_direction
    if row_distance < 0
      "DOWN\n"
    else
      "UP\n"
    end
  end
end

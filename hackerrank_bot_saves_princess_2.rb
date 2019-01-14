#!/bin/ruby

class GamePiece
  attr_reader :name, :row_position, :column_position
  def initialize(name, row, column)
    @name            = name
    @row_position    = row
    @column_position = column
  end
end

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
    grid.each_with_object({}) do |str, obj|
      if str.include?(letter)
        obj[:row] = find_row_position(grid, str)
        obj[:column] = find_column_position(letter, str)
      end
    end
  end

  def find_column_position(letter, str)
    str.index(letter)
  end

  def find_row_position(grid, str)
    grid.index(str)
  end
end

class Navigator
  attr_reader :board
  def initialize(board)
    @board = board
  end

  def path_to_princess
    puts path
    path
  end

  def next_move
    puts path.split[0]
    path.split[0]
  end

  private
  def path
    column_direction * column_distance.abs + row_direction * row_distance.abs
  end

  def column_distance
    board.bot.column_position - board.princess.column_position
  end

  def row_distance
    board.bot.row_position - board.princess.row_position
  end

  def column_direction
    return "RIGHT\n" if column_distance < 0
    return "LEFT\n"
  end

  def row_direction
    return "DOWN\n" if row_distance < 0
    return "UP\n"
  end
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

board = Board.new(grid)
navigator = Navigator.new(board)
navigator.next_move

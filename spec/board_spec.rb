require 'spec_helper'
require './lib/board'

describe 'board' do
  before(:each) do
    @board = Board.new(["---", "-m-", "p--"])
  end

  it 'exists' do
    expect(@board).to be_a(Board)
  end

  it 'should initialize with a grid' do
    expect(@board.grid).to eq(["---", "-m-", "p--"])
  end

  it 'should initialize with a bot and princess' do
    expect(@board.pieces.length).to eq(2)
    expect(@board.pieces.all? { |piece| piece.is_a? GamePiece }).to eq(true)
  end

end

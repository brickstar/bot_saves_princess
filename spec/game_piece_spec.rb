require 'spec_helper'

describe 'game_piece' do
  before(:each) do
    @bot = GamePiece.new("m", 1, 1)
  end

  it 'attrs' do
    expect(@bot.name).to eq("m")
    expect(@bot.row_position).to eq(1)
    expect(@bot.column_position).to eq(1)
  end
end

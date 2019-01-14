require 'spec_helper'

describe 'board' do
  before(:each) do
    @board = Board.new(["---", "-m-", "p--"])
  end
  
  it 'exists' do
    expect(@board).to be_a(Board)
  end
end

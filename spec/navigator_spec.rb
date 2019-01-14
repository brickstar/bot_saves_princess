require 'spec_helper'
require './lib/navigator'

describe 'navigator' do
  before(:each) do
    @board1 = Board.new(["---", "-m-", "p--"])
    @board2 = Board.new(["--p", "-m-", "---"])
    @navigator1 = Navigator.new(@board1)
    @navigator2 = Navigator.new(@board2)
  end

  context 'initializer' do
    it 'exists' do
      expect(@navigator1).to be_a(Navigator)
    end

    it "should initialize with a board" do
      expect(@navigator1.board).to be_a(Board)
    end
  end

  context '#instance methods' do
    it '#path_to_princess' do
      expect(@navigator1.path_to_princess).to eq("LEFT\nDOWN\n")
      expect(@navigator2.path_to_princess).to eq("RIGHT\nUP\n")
    end
  end
end

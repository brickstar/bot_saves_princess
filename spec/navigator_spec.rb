require 'spec_helper'
require './lib/navigator'

describe 'navigator' do
  before(:each) do
    @board = Board.new(["---", "-m-", "p--"])
    @navigator = Navigator.new(@board)
  end

  context 'initializer' do
    it 'exists' do
      expect(@navigator).to be_a(Navigator)
    end

    it "should initialize with a board" do
      expect(@navigator.board).to be_a(Board)
    end
  end

  context '#instance methods' do
    it '#path_to_princess' do
      expect(@navigator.path_to_princess).to eq("LEFT\nDOWN\n")
    end
  end
end

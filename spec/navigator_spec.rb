require 'spec_helper'
require './lib/navigator'

describe 'navigator' do
  before(:each) do
    @board_1 = Board.new(["---", "-m-", "p--"])
    @board_2 = Board.new(["--p", "-m-", "---"])
    @navigator_1 = Navigator.new(@board_1)
    @navigator_2 = Navigator.new(@board_2)
  end

  context 'initializer' do
    it 'exists' do
      expect(@navigator_1).to be_a(Navigator)
    end

    it "should initialize with a board" do
      expect(@navigator_1.board).to be_a(Board)
    end
  end

  context '#instance methods' do
    context '#path_to_princess' do
      it '3 x 3 board' do
        expect(@navigator_1.path_to_princess).to eq("LEFT\nDOWN\n")
        expect(@navigator_2.path_to_princess).to eq("RIGHT\nUP\n")
      end

      it '5 x 5 board' do
        board_5 = Board.new(["--m--", "-----", "----p"])
        board_6 = Board.new(["--p--", "-----", "----m"])
        navigator_5 = Navigator.new(board_5)
        navigator_6 = Navigator.new(board_6)

        expect(navigator_5.path_to_princess).to eq("RIGHT\nRIGHT\nDOWN\nDOWN\n")
        expect(navigator_6.path_to_princess).to eq("LEFT\nLEFT\nUP\nUP\n")
      end

      it '7 x 7 board' do
        board_7 = Board.new(["--m----", "-------", "------p"])
        board_8 = Board.new(["--p----", "-------", "------m"])
        navigator_7 = Navigator.new(board_7)
        navigator_8 = Navigator.new(board_8)

        expect(navigator_7.path_to_princess).to eq("RIGHT\nRIGHT\nRIGHT\nRIGHT\nDOWN\nDOWN\n")
        expect(navigator_8.path_to_princess).to eq("LEFT\nLEFT\nLEFT\nLEFT\nUP\nUP\n")
      end

      it 'pieces in same row' do
        board = Board.new(["---", "m-p", "---"])
        navigator = Navigator.new(board)

        expect(navigator.path_to_princess).to eq("RIGHT\nRIGHT\n")
      end

      it 'pieces in same column' do
        board = Board.new(["m--", "p--", "---"])
        navigator = Navigator.new(board)

        expect(navigator.path_to_princess).to eq("DOWN\n")
      end
    end
  end
end

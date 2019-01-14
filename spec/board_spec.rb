require 'spec_helper'
require './lib/board'

describe 'Board' do
  before(:each) do
    @board = Board.new(["---", "-m-", "p--"])
  end

  context "initializer" do
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

    it 'should place the pieces' do
      expect(@board.bot.row_position).to eq(1)
      expect(@board.bot.column_position).to eq(1)
      expect(@board.princess.row_position).to eq(2)
      expect(@board.princess.column_position).to eq(0)
    end
  end

  context "#instance methods" do
    context "#bot" do
      it 'should return bot object' do
        bot = @board.bot

        expect(bot).to be_a(GamePiece)
        expect(bot.name).to eq("m")
      end
    end

    context "#princess" do
      it 'should return princess object' do
        princess = @board.princess

        expect(princess).to be_a(GamePiece)
        expect(princess.name).to eq("p")
      end
    end
  end
end

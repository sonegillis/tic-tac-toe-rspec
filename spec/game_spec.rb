# frozen_string_literal: true

require './lib/game.rb'

describe Board do
  describe "#full?" do
    it "has to determine of the board is full or not" do
      board = Board.new
      expect(board.full?).to eql(false)
      board.available.clear
      expect(board.full?).to eql(true)
    end
  end

  describe "availability" do
    it "should check if the occupied cell is marked as unavailable" do
      board = Board.new
      board.pattern[0, 0] = "X"
      board.available.delete(1)
      expect(board.available).not_to include(1)
    end
  end
end

describe Player do
  describe "#play" do
    it "places a marker and removes the cell from availables list" do
      board = Board.new
      player1 = Player.new(player1, "X", board)
      player1.play(1)
      expect(board.available).not_to include(1)
    end
  end

  describe "#check_win" do
    it "checks if a player won the game" do
      board = Board.new
      player1 = Player.new(player1, "X", board)
      player1.play(1)
      player1.play(2)
      player1.play(3)
      expect(player1.check_win).to eql(true)
    end
  end
end

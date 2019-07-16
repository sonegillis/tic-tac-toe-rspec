require './lib/game.rb'


describe Board do
    describe "#full?" do
        it "has to determine of the board is full or not" do
            board = Board.new
            expect(board.full?).to eql(false)
            board.available.clear()
            expect(board.full?).to eql(true)
        end
    end
    describe "availability" do
        it "should check if the occupied cell is marked as unavailable" do
            board = Board.new
            board.pattern[0,0]="X"
            expect(board.available.include "1"?).to eql(false)
        end
    end
end

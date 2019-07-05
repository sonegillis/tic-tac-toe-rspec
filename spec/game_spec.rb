require './lib/game'

describe Board do
    describe "#full?" do
        it "has to determine of the board is full or not" do
            board = Board.new
            expect(board.full?).to eql(false)
            board.available.clear()
            expect(board.full?).to eql(true)
        end
    end
end

describe Player do
    describe "#play" do
        it "has add a player mark on the board" do
            board = Board.new

        end
    end
end

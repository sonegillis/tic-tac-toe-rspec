require './lib/game'
require './bin/main'

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
        it "should add a player mark on the board" do
            board = Board.new
            player1=Player.new
            input=gets
            if input > 1 and input < 10 and board[input]!="*"
              expect(board[input]).to be="X"
            else
              expect !board.available.include.to eql(true)
            end
        end
    end
end

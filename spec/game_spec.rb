
require "game"
require 'rspec'

describe "GameBoard" do 
    subject(:game) {Game.new(8, 13) }

    describe "#initialize" do
        it "creates a board of x, y dimensions, filled with blank spots" do
            expect (game.board[7][12]).is_a?(BlankSpot)
        end
    end
end
require 'rspec'
require 'move.rb'

describe "Move" do
    subject(:ike) { Character.new("Ike", 0) }
    subject(:game) {Game.new}
    pos = [1,1]
    checked_moves = []
    available_moves = []

    describe "#possible_moves" do
        it "returns an array of all possible moves, given a board, location on the board, and move 'points' " do
            expect(game.possible_moves(game.board, pos, 1, checked_moves, available_moves)).to eq([0,0])
        end
    end

end
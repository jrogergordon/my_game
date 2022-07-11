require_relative "blank_spot"
require_relative "move"


class Game
    include Move

    def initialize(x = 7, y = 7)
        @board = Array.new(x) { Array.new(y) { BlankSpot.new } }
        @board.each do |column|
            column.each do |spot|
                spot = BlankSpot.new
            end
        end
    end

    attr_reader :board

end
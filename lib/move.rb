require "byebug"
module Move
    def possible_moves(board, pos, s, checked_moves, available_moves)
        if board[pos[0]][pos[1]].is_a?(Character) || s < 0 || checked_moves.include?([[pos[0], pos[1]], s])
            return []
        end
        #create copies of board w s
        available_moves << [pos[0],pos[1]]
        checked_moves << [pos, s]

        available_moves << possible_moves(board, [pos[0]+1,pos[1]], s - 1, checked_moves, available_moves)
        available_moves << possible_moves(board, [pos[0]-1,pos[1]], s - 1, checked_moves, available_moves)
        available_moves << possible_moves(board, [pos[0],pos[1]+1], s - 1, checked_moves, available_moves)
        available_moves << possible_moves(board, [pos[0],pos[1]-1], s - 1, checked_moves, available_moves)

        available_moves
        debugger

    end

end
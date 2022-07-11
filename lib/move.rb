module Move
    def possible_moves(board, pos, s, checked_moves, available_moves)
        if board[pos[0],pos[1]].is_a?(Character) || s < 0 || checked_moves.include?([[x,y], s])
            return
        end
        s -= 1
        checked_moves << [pos, s]

        available_moves << possible_moves(board, [pos[0]+1,pos[1]], s, checked_moves, available_moves)
        avaliable_moves << possible_moves(board, [pos[0]-1,pos[1]], s, checked_moves, available_moves)
        available_moves << possible_moves(board, [pos[0],pos[1]+1], s, checked_moves, available_moves)
        available_moves << possible_moves(board, [pos[0],pos[1]-1], s, checked_moves, available_moves)

        available_moves << [pos[0],pos[1]]
    end

end
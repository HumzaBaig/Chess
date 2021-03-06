module SteppingPiece

  def moves(move_diffs)
    next_possible_moves = []
    move_diffs.each do |move_diffs|
      next_move = [self.pos[0] + move_diffs[0], self.pos[1] + move_diffs[1]]
      next_possible_moves << next_move if valid_move?(next_move)
    end
    next_possible_moves
  end

end

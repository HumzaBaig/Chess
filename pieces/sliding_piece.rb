require 'byebug'

module SlidingPiece
  DIAGONAL = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1]
  ]

  HORIZONTAL_VERTICAL = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]
  ]


  def moves(move_dirs)
    # debugger
    possible_moves = []
    move_dirs.each do |direction|
      # debugger
      possible_moves += next_possible_moves(direction, self.pos)
    end
    possible_moves
  end

  def next_possible_moves(direction, position)
    next_position = [position[0] + direction[0], position[1] + direction[1]]
    return [] unless valid_move?(next_position)


    next_possible_moves_arr = [next_position] + next_possible_moves(direction, next_position)
  end

  def valid_move?(position)
    self.board.in_bounds?(position) && (is_empty?(position) || check_color?(position))
  end

  def is_empty?(position)
    self.board[position].is_a?(NullPiece)
  end

  def check_color?(position)
    # debugger
    self.color != self.board[position].color
  end
end

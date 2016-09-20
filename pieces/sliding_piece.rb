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
    possible_moves = []
    move_dirs.each do |direction|
      possible_moves += next_possible_moves(direction, self.pos)
    end
    possible_moves
  end

  def next_possible_moves(direction, position)
    next_position = [position[0] + direction[0], position[1] + direction[1]]
    return [] unless valid_move?(next_position)

    next_possible_moves_arr = [next_position] + next_possible_moves(direction, next_position)
  end

end

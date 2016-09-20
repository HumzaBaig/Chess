require_relative 'piece'
require_relative 'stepping_piece'

class King < Piece
  include SteppingPiece

  KING_MOVES = [
    [0, 1], [0, -1],
    [1, 0], [-1, 0],
    [1, 1], [1, -1],
    [-1, 1], [1, -1]
  ]

  def initialize(position, board, color)
    super("  ♚  ", position, board, color)
  end

  def move_diffs
    KING_MOVES
  end

end

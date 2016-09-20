require_relative 'piece'
require_relative 'stepping_piece'

class Knight < Piece
  include SteppingPiece

  KNIGHT_MOVES = [
    [1, 2], [-1, 2],
    [1, -2], [-1, -2],
    [2, 1], [-2, 1],
    [2, -1], [-2, -1]
  ]

  def initialize(position, board, color)
    super("  ♞  ", position, board, color)
  end

  def move_diffs
    KNIGHT_MOVES
  end

end

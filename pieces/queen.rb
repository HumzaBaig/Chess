require_relative 'piece'
require_relative 'sliding_piece'
class Queen < Piece
  include SlidingPiece
  def initialize(position, board, color)
    super("  ♛  ", position, board, color)
  end

  def move_dirs
    SlidingPiece::HORIZONTAL_VERTICAL + SlidingPiece::DIAGONAL
  end
end

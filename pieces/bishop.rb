require_relative 'piece'

class Bishop < Piece
  include SlidingPiece
  def initialize(position, board, color)
    super("  ♝  ", position, board, color)
  end

  def move_dirs
    SlidingPiece::DIAGONAL
  end
end

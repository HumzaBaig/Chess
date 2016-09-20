require_relative 'piece'
require_relative 'sliding_piece'

class Rook < Piece
  include SlidingPiece

  def initialize(position)
    super("  ♜  ", position)
  end

  def move_dirs
    SlidingPiece::HORIZONTAL_VERTICAL
  end

end

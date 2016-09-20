require_relative 'piece'

class King < Piece
  def initialize(position, board, color)
    super("  ♚  ", position, board, color)
  end
end

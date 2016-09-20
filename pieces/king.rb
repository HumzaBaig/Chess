require_relative 'piece'

class King < Piece
  def initialize(position)
    super("  ♚  ", position)
  end
end

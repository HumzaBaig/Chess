require_relative 'piece'

class Bishop < Piece
  def initialize(position)
    super("  ♝  ", position)
  end
end

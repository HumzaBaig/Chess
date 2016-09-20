require_relative 'piece'

class Pawn < Piece
  def initialize(position)
    super("  ♟  ", position)
  end
end

require_relative 'piece'

class Pawn < Piece
  def initialize(position, board, color)
    super("  ♟  ", position, board, color)
  end
end

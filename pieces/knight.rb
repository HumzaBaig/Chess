require_relative 'piece'

class Knight < Piece
  def initialize(position, board, color)
    super("  ♞  ", position, board, color)
  end
end

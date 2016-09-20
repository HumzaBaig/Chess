require_relative 'piece'

class Knight < Piece
  def initialize(position)
    super("  ♞  ", position)
  end
end

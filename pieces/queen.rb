require_relative 'piece'

class Queen < Piece
  def initialize(position)
    super("  ♛  ", position)
  end
end


class Piece
  attr_reader :piece, :white, :black

  def initialize(piece, position)
    @piece = piece
    @pos = position
  end

  def update_position(end_pos)
    @pos = end_pos
  end

  def []=(pos,value)
    row, col = pos
    @pos[row][col] = value
  end

  def [](pos)
    row, col = pos
    @pos[row][col]
  end

  def moves

  end

end

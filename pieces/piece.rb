

class Piece
  attr_reader :piece, :color, :pos, :board
  
  def initialize(piece, position, board, color)
    @piece = piece
    @pos = position
    @board = board
    @color = color
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

require_relative 'piece'
require_relative 'null_piece'
require 'byebug'


class Board
  attr_accessor :board

  def initialize

    set_board
  end

  def set_board
    pieces = [0,1,6,7]
    # debugger
    @board = Array.new(8) { Array.new(8) }
    8.times do |row_index|
      8.times do |col_index|
        if pieces.include?(row_index)
          @board[row_index][col_index] = Piece.new(" 😂 ",[row_index, col_index])
        else
          @board[row_index][col_index] = NullPiece.new(" N ")
        end
      end
    end
  end

  def move(start, end_pos)
    self[start], self[end_pos] = self[end_pos], self[start]
    self[end_pos].update_position(end_pos)
  end

  def []=(pos,value)
    row, col = pos
    @board[row][col] = value
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def in_bounds?(position)
    position.all? { |el| el.between?(0,7) }
  end

end

board = Board.new
# p board[[0, 1]]

a = [0,0]
b = [3,4]
p board.move(a,b)

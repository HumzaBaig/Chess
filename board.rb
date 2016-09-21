require_relative 'pieces/pawn'
require_relative 'pieces/null_piece'
require_relative 'pieces/bishop'
require_relative 'pieces/rook'
require_relative 'pieces/queen'
require_relative 'pieces/king'
require_relative 'pieces/knight'

require 'byebug'


class Board
  attr_accessor :board

  def initialize

    set_board
  end

  def set_board
    pieces = [1,6]
    # debugger
    @board = Array.new(8) { Array.new(8) }
    8.times do |row_index|
      8.times do |col_index|
        color = row_index > 2 ? :light : :dark
        if pieces.include?(row_index)
          @board[row_index][col_index] = Pawn.new([row_index, col_index], self, color)
        elsif row_index == 0 || row_index == 7
          case col_index
          when 0, 7
            @board[row_index][col_index] = Rook.new([row_index, col_index], self, color)
          when 1, 6
            @board[row_index][col_index] = Knight.new([row_index, col_index], self, color)
          when 2, 5
            @board[row_index][col_index] = Bishop.new([row_index, col_index], self, color)
          when 3
            @board[row_index][col_index] = Queen.new([row_index, col_index], self, color)
          else
            @board[row_index][col_index] = King.new([row_index, col_index], self, color)
          end
        else
          @board[row_index][col_index] = NullPiece.instance
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


a = Board.new

b = a[[6, 1]]

p b.regular_moves
p b.diagonal_attacks

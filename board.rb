require_relative 'piece'
require_relative 'null_piece'
require 'byebug'
class Board
  def initialize
    @board = Array.new(8) { Array.new(8) }
    set_board
  end

  def set_board
    pieces = [0,1,6,7]
    # debugger
    @board = @board.map.with_index do |row, index|
      row.map do |pos|
        if pieces.include?(index)
          pos = Piece.new("Piece")
        else
          pos = NullPiece.new("NullPiece")
        end
      end
    end
  end

end

board = Board.new

p board

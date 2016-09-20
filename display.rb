require 'colorize'
require_relative 'board'
require_relative 'cursor'
require 'byebug'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)

  end

  def render
    i = 0
    while i == 0
      begin
          display_board
          @cursor.get_input
      rescue => e
        puts "WHOA. you're going too far"
      end
    end
  end

  def display_board
    @board.board.each_with_index do |row, row_index|
      row.each_with_index do |position, col_index|
        if [row_index,col_index] == @cursor.cursor_pos
          print position.piece.colorize(:color => :yellow, :background => :red)
        else
          print position.piece
        end
      end
      puts "\n"
    end
  end

end

d = Display.new(Board.new)
# d.display_board
d.render

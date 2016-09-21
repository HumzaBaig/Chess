require_relative 'piece'

class Pawn < Piece

  def initialize(position, board, color)
    super("  ♟  ", position, board, color)
    @initial_pos = position
  end

  def all_moves
    all_moves_arr = [[2, 0], [1, 0], [1, 1], [1, -1]]

    if self.color == :light
      all_moves_arr = all_moves_arr.map do |position|
        position.map {|el| el * -1 }
      end
    end
    all_moves_arr
  end

  def moves # NOT FINISHED!!!!!!!!
    possible_moves = []
    all_moves_arr = all_moves

    all_moves_arr.each do |move|
        next_move = [self.pos[0] + move[0], self.pos[1] + move[1]]
        possible_moves << next_move
    end
    possible_moves
  end

  def diagonal_attacks
    diagonals_arr = all_moves.drop(2)

    diagonals_arr.select! { |position| check_diagonal?([self.pos[0] + position[0], self.pos[1] + position[1]]) }

    diagonals_arr
  end

  def regular_moves
    regular_moves_arr = all_moves.take(2)

    regular_moves_arr.delete_at(1) unless valid_move?([self.pos[0] + regular_moves_arr[1][0], self.pos[1] + regular_moves_arr[1][1]])
    regular_moves_arr.delete_at(0) unless at_start_row?

    regular_moves_arr
  end

  def at_start_row?
    start_move = all_moves.take(1)
    self.pos[0] == @initial_pos[0] && valid_move?([self.pos[0] + start_move[0][0], self.pos[1] + start_move[0][1]])
  end

  def check_diagonal?(diagonal_position)
    return false if is_empty?(diagonal_position) || self.board.in_bounds?(diagonal_position)
    check_color?(diagonal_position)
  end

  def valid_move?(position)
    self.board.in_bounds?(position) && is_empty?(position)
  end

end

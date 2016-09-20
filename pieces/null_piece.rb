require 'singleton'

class NullPiece
  include Singleton

  attr_reader :piece
  def initialize()
    @piece = "  N  "
  end
end

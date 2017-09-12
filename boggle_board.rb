class BoggleBoard
  def initialize(board)
    @board = board
  end

  attr_accessor :board

  # def shake!
  # end
  #
  # # Defining to_s on an object controls how the object is
  # # represented as a string, e.g., when you pass it to puts
  # def to_s
  #   "omg what is this? try printing me."
  # end
end

board = BoggleBoard.new(["____","____","____","____"])

puts board.board

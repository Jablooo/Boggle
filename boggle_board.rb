class BoggleBoard
  def initialize
    @board = ["____","____","____","____"]
  end

  # def shake!
  # end
  #
  # # Defining to_s on an object controls how the object is
  # # represented as a string, e.g., when you pass it to puts
  def to_s
    puts "omg what is this? try printing me."
    puts @board
  end
end

board = BoggleBoard.new

puts board.to_s

class BoggleBoard
  def initialize
    @board = ["____","____","____","____"]
  end

  # def shake!
  # end

  def to_s
    puts "omg what is this? try printing me."
    puts @board
  end
end

board = BoggleBoard.new

puts board.to_s

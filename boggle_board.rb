class BoggleBoard
  def initialize
    @firstRow = "____"
    @secondRow = "____"
    @thirdRow = "____"
    @lastRow = "____"
  end

  # def shake!
  # end

  def to_s
    puts "omg what is this? try printing me."
    puts @firstRow
    puts @secondRow
    puts @thirdRow
    puts @lastRow
  end
end

board = BoggleBoard.new

puts board.to_s

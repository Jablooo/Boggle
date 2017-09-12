class BoggleBoard
  def initialize
    @firstRow = ["_","_","_","_"]
    @secondRow = ["_","_","_","_"]
    @thirdRow = ["_","_","_","_"]
    @lastRow = ["_","_","_","_"]
  end

  def shake!
    chars = ("A".."Z").to_a
    @firstRow.each do |i|
      i.gsub! "_", chars.sample
    end
    puts @firstRow.join

    @secondRow.each do |i|
      i.gsub! "_", chars.sample
    end
    puts @secondRow.join

    @thirdRow.each do |i|
      i.gsub! "_", chars.sample
    end
    puts @thirdRow.join

    @lastRow.each do |i|
      i.gsub! "_", chars.sample
    end
    puts @lastRow.join

  end

  def to_s
    puts "omg what is this? try printing me."
    puts @firstRow
    puts @secondRow
    puts @thirdRow
    puts @lastRow
  end
end

board = BoggleBoard.new

print board.shake!

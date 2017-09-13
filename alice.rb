class BoggleBoard
  def initialize
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end

  def shake!
    output_string = String.new
    @spaces.map! do |space|
      space = @alphabet.shuffle.take(1)
    end
    @spaces

    4.times do
      output_string << @spaces.shift(4).join('') +"\n"
    end

    output_string
  end

  def to_s
    output_string2 = String.new
    letter_array = @spaces


    4.times do
      output_string2 << letter_array.shift(4).ljust(3).join('') +"\n"
    end

    output_string2

  end
end

board = BoggleBoard.new

puts board.shake!

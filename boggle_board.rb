class BoggleBoard
  def initialize
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end

  def shake!
    output_string = String.new
    letters = @spaces
    letters.map! { |x| @alphabet.sample}

    4.times do
      output_string << letters.shift(4).join('') +"\n"
    end

    output_string

  end

  def to_s
    output_string = String.new
    letter_array = @spaces


    4.times do
      output_string << letter_array.shift(4).join('') +"\n"
    end

    output_string

  end
end

board = BoggleBoard.new

puts board.shake!

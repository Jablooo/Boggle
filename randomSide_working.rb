class Dice
  def initialize(side1, side2, side3, side4, side5, side6)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
    @side5 = side5
    @side6 = side6
  end

  attr_accessor :side1, :side2, :side3, :side4, :side5, :side6

  def randomSide
    sides = [@side1, @side2, @side3, @side4, @side5, @side6]
    choice = sides.sample
    choice
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

dice1 = Dice.new("A","A","E","E","G","N")
dice2 = Dice.new("E","L","R","T","T","Y")
dice3 = Dice.new("A","O","O","T","T","W")
dice4 = Dice.new("A","B","B","J","O","O")
dice5 = Dice.new("E","H","R","T","V","W")
dice6 = Dice.new("C","I","M","O","T","U")
dice7 = Dice.new("D","I","S","T","T","Y")
dice8 = Dice.new("E","I","O","S","S","T")
dice9 = Dice.new("D","E","L","R","V","Y")
dice10 = Dice.new("A","C","H","O","P","S")
dice11 = Dice.new("H","I","M","N","Q","U")
dice12 = Dice.new("E","E","I","N","S","U")
dice13 = Dice.new("E","E","G","H","N","W")
dice14 = Dice.new("A","F","F","K","P","S")
dice15 = Dice.new("H","L","N","N","R","Z")
dice16 = Dice.new("D","E","I","L","R","X")

class BoggleBoard
  def initialize
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
    @dice = Dice
    @rangeDice = (1..6)
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
    output_string2 = String.new
    letter_array = @spaces


    4.times do
      output_string2 << letter_array.shift(4).join('') +"\n"
    end

    output_string2

  end
end

board = BoggleBoard.new

@alldice = []
Dice.all.each do |i|
  push = i.randomSide
  @alldice << push
end

output_board = String.new
letters_random = @alldice.shuffle

4.times do
  output_board << letters_random.shift(4).join('') +"\n"
end

puts output_board

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



class BoggleBoard

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

  def initialize
    @spaces = Array.new(16, "_")
    @alphabet = ("A".."Z").to_a
  end

  def shake!
    @alldice = []
    Dice.all.each do |i|
      push = i.randomSide
      @alldice << push
    end

    @alldice

    output_board = String.new
    letters_random = @alldice.shuffle

    # output_board << letters_random.join('')
    # output_board.gsub("Q", "Qu")

    letters_random.map! { |el| el == "Q" ? "Qu" : el + " " }
    4.times do
      output_board << letters_random.shift(4).join(' ') +"\n"
    end

    output_board
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

puts board.shake!



# Shuffle Test1
# dice1 = Dice.new("A","A","A","A","A","A")
# dice2 = Dice.new("B","B","B","B","B","B")
# dice3 = Dice.new("B","B","B","B","B","B")
# dice4 = Dice.new("B","B","B","B","B","B")
# dice5 = Dice.new("B","B","B","B","B","B")
# dice6 = Dice.new("B","B","B","B","B","B")
# dice7 = Dice.new("B","B","B","B","B","B")
# dice8 = Dice.new("B","B","B","B","B","B")
# dice9 = Dice.new("B","B","B","B","B","B")
# dice10 = Dice.new("B","B","B","B","B","B")
# dice11 = Dice.new("B","B","B","B","B","B")
# dice12 = Dice.new("B","B","B","B","B","B")
# dice13 = Dice.new("B","B","B","B","B","B")
# dice14 = Dice.new("B","B","B","B","B","B")
# dice15 = Dice.new("B","B","B","B","B","B")
# dice16 = Dice.new("B","B","B","B","B","B")

# Shuffle Test2
# dice1 = Dice.new("A","A","A","A","A","A")
# dice2 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice3 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice4 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice5 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice6 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice7 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice8 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice9 = Dice.new("Q","Q","Q","Q","Q","Q")
# dice10 = Dice.new("Q","B","B","B","B","B")
# dice11 = Dice.new("B","B","B","B","B","B")
# dice12 = Dice.new("B","B","B","B","B","B")
# dice13 = Dice.new("B","B","B","B","B","B")
# dice14 = Dice.new("B","B","B","B","B","B")
# dice15 = Dice.new("B","B","B","B","B","B")
# dice16 = Dice.new("B","B","B","B","B","B")

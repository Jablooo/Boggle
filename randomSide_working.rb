class Dice

  # As I wanted to replicate the attributes of a die I set up
  # six sides for the initialize section of my class. This might
  # end up being an over complification however time will tell.

  def initialize(side1, side2, side3, side4, side5, side6)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
    @side5 = side5
    @side6 = side6
  end

  attr_accessor :side1, :side2, :side3, :side4, :side5, :side6

  # randomSide method takes has the six sides in an array and picks
  # picks one at random
  def randomSide
    sides = [@side1, @side2, @side3, @side4, @side5, @side6]
    choice = sides.sample
    choice
  end

  # needed to be able to call Dice.all
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end



class BoggleBoard

  # 16 dice created with a letter assigned to each side.
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

    # Step 1
    # is taking all the dice created and choosing a randomSide
    # for each dice and pushing these values into an array.
    @alldice = []
    Dice.all.each do |i|
      push = i.randomSide
      @alldice << push
    end

    # Step 2
    # create a new string for final output. shuffle the array so
    # that the order of the dice isn't always the same
    output_board = String.new
    letters_random = @alldice.shuffle

    # Step 3 - Q
    # letters_random.map goes through the shuffled dice, checks if
    # any of them are 'Q' and replaces them with 'Qu' if they are.
    # if not the it takes the characteur and adds a space after it.
    letters_random.map! { |el| el == "Q" ? "Qu" : el + " " }

    # Step 4 - loop/format
    # takes final array and formats it into 4 rows of 4
    4.times do
      output_board << letters_random.shift(4).join(' ') +"\n"
    end

    output_board
  end


  # boards.to_s prints out an 'empty' board. (four rows of four '_')
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

# Test Dice use to test different features of the boggle.

# test 1 was used to make sure that the dice were shuffle
# /mixing and that the same dice wasn't just always in the
# spot.


# test 2 was used to increase the number of Qs on the board
# so that I could test the Qu replacement method.

##------------------Test 1-----------------
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

##------------------Test 2-----------------
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

class Dice
  def initialize(side1)
    @side1 = side1
    @range = "1..6"
  end

  attr_accessor :side1

  def randomSide
    sides = [@side1, @side2, @side3, @side4, @side5, @side6]
    choice = sides.sample
    choice
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

dice1 = Dice.new("AAEEGN")
dice2 = Dice.new("ELRTTY")
dice3 = Dice.new("AOOTTW")
dice4 = Dice.new("ABBJOO")
dice5 = Dice.new("EHRTVW")
dice6 = Dice.new("CIMOTU")
dice7 = Dice.new("DISTTY")
dice8 = Dice.new("EIOSST")
dice9 = Dice.new("DELRVY")
dice10 = Dice.new("ACHOPS")
dice11 = Dice.new("HIMNQU")
dice12 = Dice.new("EEINSU")
dice13 = Dice.new("EEGHNW")
dice14 = Dice.new("AFFKPS")
dice15 = Dice.new("HLNNRZ")
dice16 = Dice.new("DEILRX")



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

puts dice1.randomSide

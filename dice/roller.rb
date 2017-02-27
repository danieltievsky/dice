module Dice
  class Roller
    attr_reader :input
    attr_reader :dicekeys
    attr_reader :rolls

    DICESIDES = {
        "d4"=> (1..4).to_a,
        "d6"=> (1..6).to_a,
        "d12"=> (1..12).to_a,
        "d8"=> (1..8).to_a,
        "d20"=> (1..20).to_a,
    }

    def initialize(input, dicekeys, rolls)
      @input = input
      @dicekeys = dicekeys
      @rolls = rolls

    end

    # use each even element as die of x sides, place into array "dicekeys"
    def countdice
      @input.each do |i|
        if @input.index(i) % 2 == 0
          @dicekeys << i
        end
      end
    end

    # match elements in dicekeys to values in hash DICESIDES
    def match
      @dicekeys.map { |i| DICESIDES[i] }
    end

    # use each odd element as number of rolls, place into another array
    def countrolls
      @input.each do |i|
        if @input.index(i) % 2 == 1
          @rolls << i.to_i
        end
      end
    end

  end
end
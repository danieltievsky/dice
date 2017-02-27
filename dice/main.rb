require_relative './roller'
require 'byebug'

werollin = Dice::Roller.new(ARGV,[],[])

#check for input formatting
if werollin.input.count % 2 != 0
  puts 'Please supply rolls in format d(x) y d(a) b etc'
end

werollin.countdice
nums = werollin.match
werollin.countrolls

#split arrays into pairs to be rolled
finalroll = nums.zip(werollin.rolls)


def roll(arr)
  arr.map do |(x,y)|
    vals = y.times {x.sample}
    print "#{vals}
"
    #this removes the excess array with the elements used up by .map
    #format the output
  end
end 

roll(finalroll)

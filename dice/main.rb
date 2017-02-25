require_relative './roller'
require 'byebug'

werollin = Dice::Roller.new(ARGV,[],[])

#check for input formatting
if werollin.input.count % 2 != 0
  puts 'Please supply rolls in format d(x) y d(a) b etc'
end

werollin.countdice
dice = werollin.match
rolls = werollin.countrolls

#split arrays into pairs to be rolled
finalroll = dice.zip(rolls)

 # def roll(arr)
 #   result=[]
 #   arr.each do |(x,y)|
 #      result << y.times x.sample
 #     puts result
 #   end
 # end

 roll(finalroll)

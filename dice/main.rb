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
  arr.each do |x,y|
   vals=[]
    y.times {
      vals << x.sample
   }
    puts "#{vals}"
  end
end 

roll(finalroll)
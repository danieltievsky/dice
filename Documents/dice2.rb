DICE = 
{
"d4"=> (1..4).to_a,
"d6"=> (1..6).to_a,
"d8"=> (1..8).to_a,
"d12"=> (1..12).to_a,
"d20"=> (1..20).to_a,
}

#gather input from command line as array
input=ARGV
die=DICE[input[0]]

#roll selected die 'sides' 'rolls' number of times and print to console
def roll(sides,rolls)
rolls.times do
	puts sides.sample	
end
	end

roll(die,input[1].to_i)


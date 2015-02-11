#!/usr/bin/ruby

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

class RockPaperScissor
	attr_accessor :strategy	
	def initialize(strategy)
		@strategy = strategy
	end

	def Analyze
		raise WrongNumberOfPlayersError if strategy.length != 2
		raise NoSuchStrategyError unless strategy[0][1] == "P" || strategy[0][1] == "R" || strategy[0][1] == "S"
		raise NoSuchStrategyError unless strategy[1][1] == "P" || strategy[1][1] == "R" || strategy[1][1] == "S"

		if strategy[0][1] == 'R'
			if strategy[1][1] == 'P'
				puts "Winner is #{strategy[1]}" 
			else
				puts "Winner is #{strategy[0]}"
			end
		elsif strategy[0][1] == 'S'
			if strategy[1][1] == 'R'
				puts "Winner is #{strategy[1]}" 
			else
				puts "Winner is #{strategy[0]}"
			end			
		else
			if strategy[1][1] == 'S'
				puts "Winner is #{strategy[1]}" 
			else
				puts "Winner is #{strategy[0]}"
			end						
		end
	end
end

if __FILE__ == $0
# 1) input pairs from shell
	ary = Array.new
	arylist =Array.new(ary)
	0.upto(ARGV.size-1) do |i|
		ary[i] = ARGV[i]
		if i%2 ==1
		arylist[i/2] = ary[i-1..i] 	
		end
	end
	print "#{arylist}\n"
	game = RockPaperScissor.new(arylist)

# 2) define the pairs inside
#	game = RockPaperScissor.new([["AA","R"],["BB","S"]])
	game.Analyze
end

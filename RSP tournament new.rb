#!/usr/bin/ruby

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

class RockPaperScissor
	attr_accessor :allStrategy	
	def initialize(allStrategy)
		@allStrategy = allStrategy
	end

	def Analyze
# currentWinner is to store winner of any two players
# currentStrategy is array of two players who are currently "playing the game", looks like [["P1 name","P1 Strategy"],["P2 name","P2 Strategy"]]
# currentWinner is the winner of two players who are currently "playing the game"
		currentWinner = Array.new
		currentStrategy = Array.new(2){Array.new(2)}
		currentSize = allStrategy.size
#while loop for each round
#0.step(..), this loop is for computing all the results of each round
		while currentSize >=2 do
			0.step(currentSize-2,2) do |i|
				currentStrategy[0] = allStrategy[i]
				currentStrategy[1] = allStrategy[i+1]

				raise WrongNumberOfPlayersError if currentStrategy.length != 2
				raise NoSuchcurrentStrategyError unless currentStrategy[0][1] == "P" || currentStrategy[0][1] == "R" || currentStrategy[0][1] == "S"
				raise NoSuchcurrentStrategyError unless currentStrategy[1][1] == "P" || currentStrategy[1][1] == "R" || currentStrategy[1][1] == "S"

				if currentStrategy[0][1] == 'R'
					if currentStrategy[1][1] == 'P'
						currentWinner = currentStrategy[1]
					else
						currentWinner = currentStrategy[0]
					end
				elsif currentStrategy[0][1] == 'S'
					if currentStrategy[1][1] == 'R'
						currentWinner = currentStrategy[1]
					else
						currentWinner = currentStrategy[0]
					end			
				else
					if currentStrategy[1][1] == 'S'
						currentWinner = currentStrategy[1]
					else
						currentWinner = currentStrategy[0]
					end						
				end	

				allStrategy[i/2] = currentWinner
			end		
		
			currentSize = currentSize/2
		end
			
		puts "The final winner is:\n #{allStrategy[0]}\n"

	end
end

if __FILE__ == $0
# get input from shell, every two players is a matchup from left to right.
	ary = Array.new
	arylist =Array.new(ary)
	0.upto(ARGV.size-1) do |i|
		ary[i] = ARGV[i]
		if i%2 ==1
		arylist[i/2] = ary[i-1..i] 	
		end
	end
	print "All pairs of player and strategy:\n #{arylist}\n"
	game = RockPaperScissor.new(arylist)

#   or define the pairs inside using quoted sentence below
#	game = RockPaperScissor.new([["AA","R"],["BB","S"]])
	game.Analyze
end

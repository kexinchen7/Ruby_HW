
ary = Array.new
arylist =Array.new(ary)
0.upto(ARGV.size-1) do |i|
	ary[i] = ARGV[i]
	if i%2 ==1
	arylist[i/2] = ary[i-1..i] 	
	end
end

print "#{arylist}\n"


currentScheme = Array.new(2){Array.new(2)}

currentSize = allScheme.Size - 2

0.step(currentSize,2) do |i|
	
	currentScheme[0] = allScheme[i]
	currentScheme[1] = allScheme[i+1]

	raise WrongNumberOfPlayersError if currentScheme.length != 2
	raise NoSuchcurrentSchemeError unless currentScheme[0][1] == "P" || currentScheme[0][1] == "R" || currentScheme[0][1] == "S"
	raise NoSuchcurrentSchemeError unless currentScheme[1][1] == "P" || currentScheme[1][1] == "R" || currentScheme[1][1] == "S"

	if currentScheme[0][1] == 'R'
		if currentScheme[1][1] == 'P'
			currentWinner = currentScheme[1]
		else
			currentWinner = currentScheme[0]
		end
	elsif currentScheme[0][1] == 'S'
		if currentScheme[1][1] == 'R'
			currentWinner = currentScheme[1]
		else
			currentWinner = currentScheme[0]
		end			
	else
		if currentScheme[1][1] == 'S'
			currentWinner = currentScheme[1]
		else
			currentWinner = currentScheme[0]
		end						
	end	

	newScheme[i/2] = currentWinner

	currentSize /= currentSize


end
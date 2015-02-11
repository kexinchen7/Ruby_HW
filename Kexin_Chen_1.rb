#!/usr/bin/env ruby

class Palindrome
	attr_accessor :word
	def initialize(word)
		@word = word
	end

	def palindrome
		word1 = word.gsub(/[\W\d]/,"").downcase()
		word2 = word1.reverse()
		if word1 == word2
			puts "#{word}, true"
		else
			puts "#{word}, false"
		end
	end
end

if __FILE__ == $0
	ARGV.each do |a|
		p = Palindrome.new(a)
		p.palindrome
	end
end
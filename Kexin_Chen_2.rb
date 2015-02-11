#!/usr/bin/env ruby

class Count_words
	attr_accessor :word
	def initialize(word)
		@word = word
	end

	def count_words
		word_count = Hash.new(0)
		word.downcase.scan(/\w+/) do |w|
			word_count[w] += 1
		end
		puts word_count
	end
end

if __FILE__ == $0
	ARGV.each do |a|
		p = Count_words.new(a)
		p.count_words
	end
end
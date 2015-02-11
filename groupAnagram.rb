#!/usr/bin/env ruby

class AnagramGroup
  attr_accessor :wordlist
  
  def initialize(wordlist)
    @wordlist = wordlist
  end
  
  def groupAnagram
    #downcase each word, then sort alphabetically
    newlist = Array.new()
    for i in 0..wordlist.size-1
      newlist[i] = wordlist[i].downcase.chars.sort.join
    end
#    puts newlist
      finalist = Array.new()    
    #for each converted word, find all anagram words of it, store them into finalist
    for i in 0..newlist.size-1
      if newlist[i] != nil
        addlist = Array.new(1){Array.new()}
        addlist[0].push(wordlist[i])
        for j in i+1..newlist.size-1
          if newlist[i] == newlist[j]
            addlist[0].push(wordlist[j])
            newlist[j] = nil
          end
        end
      end
      finalist = finalist + addlist
    end
    
    puts "#{finalist}"
  end
  
end


#create an object of AnagramGroup class

anagram = AnagramGroup.new(["rats","Creams","taRs","fOr","four","scReaM","stars"])
anagram.groupAnagram

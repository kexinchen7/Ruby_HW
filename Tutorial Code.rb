//tutorial 8
class Bucky
def talk
puts "Hi, my name is Bucky!"
end
end
bo = Bucky.new
bo.talk

//tutorial 9: everything is an Object
/*
Built-in class
kernel methods
Fixnum
"mm bacon".class
36.class
*/

//tutorial 10: arguments

"bacon".length
"bacon".upcase
"hello" + "my fair lady"
"evil".reverse.upcase

//tutorial 12: methods and variables
/*
method don't belong to any class
variables start with letter or underscore
variables case-sensitive
*/

//tutorial 13: Expressions and Shortcuts
/*


*/

//tutorial 14: Decision making
puts "you need to eat some cheeseburgers" if weight < 150

//tutorial 15: Comparison operator

equal test: ==

weight> 100 && weight <300

//tutorial 16: unless

//tutorial 17: 

8.times do puts "Bacon" end

4.times {puts "puddinghammcok"}

3.upto(7) {puts "count from 3 to 7"}

15.downto(12) {puts "this one counts down"}

0.step(15,5) {puts "0-15 by 5's" }

//tutorial 18: extracting the value from loops

1.upto(10) {|x| puts x}

//tutorial 19: Changing Data Types
13/4
4
13.0/4.0
print c.to_f

//tutorial 20: Constants
/*
constants are variables that value doesn't change.
variable is a place holder
constants start with capital letter
*/
 
//tutorial 21: Multiple Line String Variables

tuna =<<mark
hello
I
am
Kexin
mark

//tutorial 22: Interpolation
puts " #{a} * #{b} = #{a*b} "

//tutorial 23: Regular Expressions
puts "fatbucky".sub('fat','lucky')

puts "fatbuckyfat".gsub('fat','lucky')

a = "yo, what the heck do you want?"
puts a.sub(/^../,'Excuse me sir')

//tutorial 24: Regular Expressions in Loops
a = "wow bucky is the greatest"
a.scan(/.../) {|b| puts b}

a.scan(/\S\S\S/) {|b| puts b}


//tutorial 25: Extracting Numbers and Characters Classes

pattern for numbers

tuna.scan(/\d+/) {|z| puts z}

tuna.scan(/[a-g]/) {|y| puts y}

//tutorial 26: Decision making with regular expressions
puts "your name can not contain any number" if "Bucky45" =~ /[0-9]/

puts "Phone number cant contain letters" if "334Bucky".match(/[a-z]/)


//tutorial 27: Beginning Arrays


//tutorial 28: push and pop
cheese = []

cheese << "first item"
cheese.push("second item")

cheese.pop


//tutorial 29: each and length

sally = [1,2,3,4,5]
sally.each {|x| puts x}
sally.length

//tutorial 30: cool array tricks
boys = ['bucky','tomy','gerard']
girls = ['lisa','jenny','jasmine']

people = boys + girls

noboys = people - boys

puts "yep that person is included"if girls.include?("lisa")

people.first(4)

people.last

people.reverse

//tutorial 31: hashes
example = {'tim'=>'loser','kexin'=>'born a winner','yy'=>'my darling'}

print example['kexin']

example['kexin'] = 'smartest guy in the world'

//tutorial 32: methods for hashes

example.each {|a,b| puts a+b}

example.keys
example.delete("tim")















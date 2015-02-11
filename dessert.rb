#!/usr/bin/env ruby

class Dessert
#initializer
#  def initialize(name, calories)
#    @name = name
#    @calories = calories
#  end
#getters 
  def getName
    return @name
  end
  def getCalories
    return @calories
  end
#setters
  def setName(name)
    @name = name
  end
  def setCalories(calories)
    @calories = calories
  end
#method: healthy?
  def healthy?
    puts "Healthy? it's ture!" unless @calories > 200 
  end

#method: delicious?
  def delicious?
    puts "Delicious? It's true!"
  end
end

class JellyBean < Dessert
  def setFlavor(flavor)
    @flavor = flavor
  end
  def getFlavor
    return @flavor
  end
  def JBdelicious?
    if @flavor == "black licorice"
      puts "Delicious? It's not!"
    else puts "Delicious? It's true!"
    end
  end
end

#create object

myDessert = Dessert.new
myDessert.setName("Kitkat")
myDessert.setCalories(160)

myName = myDessert.getName
myCalories = myDessert.getCalories

puts "Name: #{myName}"
puts "Calories: #{myCalories}"

myDessert.healthy?
myDessert.delicious?

#////////////////////cutting line////////////////////

oneJB = JellyBean.new
oneJB.setName("JellyBean")
oneJB.setCalories(220)
oneJB.setFlavor("black licoric")

puts "Name: #{oneJB.getName}"
puts "Calories: #{oneJB.getCalories}"
puts "Flavor: #{oneJB.getFlavor}"

oneJB.healthy?
oneJB.JBdelicious?
require "./i_animal.rb"

class Animal < IAnimal
  def initialize(name, old, weight)
    @name = name
    @old = old
    @weight = weight
  end

  def eat
    if @weight < maxWeight
      @weight = [@weight + increment, minWeight].max
    else 
      @weight -= substract
    end
  end

  def sleep
    @weight -= substract
  end

  def addDay
    @old += 1
  end

  def minWeight
    10
  end

  def maxWeight
    100
  end

  def increment
    3
  end

  def substract
    1
  end

  attr_reader :name
  attr_reader :old
  attr_reader :weight
end
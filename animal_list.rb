require "./animal.rb"

class Macan < Animal
end

class Koala < Animal
end

class Rusa < Animal
  def maxWeight
    75
  end
end

class Domba < Animal
  def maxWeight
    70
  end

  def increment
    2
  end
end

class Kambing < Animal
  def maxWeight
    70
  end

  def substract
    2
  end
end

class Gajah < Animal
  def maxWeight
    500
  end

  def increment
    5
  end

  def substract
    3
  end

  def eat
    @weight = [@weight + increment, minWeight].max
    @weight = maxWeight if @weight > maxWeight
  end
end
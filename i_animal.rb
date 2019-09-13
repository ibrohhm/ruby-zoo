module Interface
  def method(name)
    define_method(name) { |*args|
      raise "interface method #{name} not implemented"
    }
  end
end

class IAnimal
  extend Interface
  # method :initialize
  method :eat
  method :sleep
end

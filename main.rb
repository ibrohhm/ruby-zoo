require "./animal.rb"
require "./helper.rb"
require "./animal_list.rb"

def main
  animals = []

  print "Enter Number of Animal and Days: "
  n, days = $stdin.readline().split(" ").map(&:to_i)

  n.times do |i|
    name, old, weight  = $stdin.readline().split(" ")

    begin
      klass = Kernel.const_get(name)
    rescue
      klass = Animal
      name = "_" + name
    end
    
    animals.push(klass.new(name, old.to_i, weight.to_i))
  end

  run(animals, days)
end

def run(animals, days)
  days.times do |d|
    puts "\nHari ke##{d+1}"
    for animal in animals do
      helper.eat(animal)
      helper.sleep(animal)
    end
    puts "\n"
  end
end

def helper
  Helper.new
end

main





class Helper
  def spell(animal, at)
    puts "Kondisi #{animal.name} di #{at == 1 ? "Siang" : "Malam"} hari --> usia: #{ animal.old.to_s } -- berat: #{ animal.weight.to_s} "
  end

  def eat(animal)
    animal.eat
    spell(animal, 1)
  end

  def sleep(animal)
    animal.sleep
    spell(animal, 0)
    animal.addDay
  end
end
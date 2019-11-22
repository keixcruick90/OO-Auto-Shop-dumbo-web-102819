require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sherlock = CarOwner.new(name: "Sherlock Holmes")
watson = CarOwner.new(name: "John Watson")
moriarty = CarOwner.new(name: "James Moriarty")

lestrade = Mechanic.new(name: "Inspector Lestrade", specialty: "electric")
mary = Mechanic.new(name: "Mary Watson", specialty: "Family")
irene = Mechanic.new(name: "Irene Adler", specialty: "Luxury")

tes = Car.new("Tesla", "Model S", "Electric", sherlock, lestrade)
pri = Car.new("Toyota", "Prius", "Family", watson, mary)
hon = Car.new("Honda", "Civic 2020",  "Family", watson, mary)
fer = Car.new("Ferrari", "812 Superfast", moriarty, irene)
bm = Car.new("BMW", "7 Series", "Luxury", moriarty, irene)
be = Car.new("Mercedez-Benz", "C-Class", "Luxury", moriarty, irene)
por = Car.new("Porsche", "Panamera", "Luxury", moriarty, irene)


binding.pry

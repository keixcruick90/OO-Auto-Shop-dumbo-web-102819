class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select{ |car| car.owner == self }
  end

  def mechanics
    cars.map{ |car| car.mechanic }
  end

  def self.average_amount_of_cars
    average(@@all.map{ |owner| owner.cars.length })
  end

  def self.all
    @@all
  end

  def self.average(arr)
    arr.reduce(0){|sum, num|
      sum += num
    }.to_f / arr.length
  end

end

class Mechanic
  @@all = []
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.mechanic == self}
  end

  def owners
    cars.map{|car| car.owner}
  end

  def owner_names
    owners.map{|owner| owner.name}
  end

end

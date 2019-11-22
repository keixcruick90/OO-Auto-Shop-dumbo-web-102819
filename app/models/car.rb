class Car
  @@all = []
  attr_reader :make, :model, :classification, :owner, :mechanic

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def model
    @model = model
  end

  def classification
    @classification = classification
  end

  def owner
    @owner = owner
  end

  def mechanic
    @mechanic = mechanic
  end

  def self.all
    @@all
  end

  def mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification}
  end

  def self.classifications
   @@all.map { |car| car.classification}.uniq
 end

end

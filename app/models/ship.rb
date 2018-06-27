class Ship

  @@all_ships = []

  attr_accessor :name, :type, :booty

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    self.all.clear
  end

end

class Ship

  @@all_ships = []

  attr_accessor :name, :type, :booty

  def initialize(bar)
    @name = bar[:name]
    @type = bar[:type]
    @booty = bar[:booty]
    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    self.all.clear
  end

end

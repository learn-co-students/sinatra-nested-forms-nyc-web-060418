class Pirate

  @@all = []

  attr_accessor :name, :height, :weight

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end

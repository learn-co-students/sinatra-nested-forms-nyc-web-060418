class Pirate

  attr_accessor :name, :weight, :height

  @@all_pirates = []

  def initialize(foo)
    @name = foo[:name]
    @weight = foo[:weight]
    @height = foo[:height]
    @@all_pirates << self
  end

  def self.all
    @@all_pirates
  end

end

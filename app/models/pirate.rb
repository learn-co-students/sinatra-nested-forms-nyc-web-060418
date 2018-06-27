class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def self.all
    @@all
  end


  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    self.class.all.push(self)
  end


end

class Coordinate
  attr_reader :x, :y
  attr_accessor :occupied

  def initialize(x, y)
    @x = x
    @y = y
    @occupied = false
  end

  def occupied?
    @occupied
  end

  def occupied!
    @occupied = true
  end

  def unoccupied!
    @occupied = false
  end
end

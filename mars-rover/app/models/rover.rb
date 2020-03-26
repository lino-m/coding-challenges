# TODO: Implement Rover Class

class Rover
  def initialize(attributes = {})
    @mars = attributes[:mars]
    @position_x = attributes[:position_x] || 0
    @position_y = attributes[:position_y] || 0
    @location = "#{@position_x}, #{@position_y}"
    @orientation = attributes[:orientation]
  end
end

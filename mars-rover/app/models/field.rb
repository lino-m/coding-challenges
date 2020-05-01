require_relative 'coordinate.rb'

class Field
  attr_reader :size_x, :size_y, :field_coordinates

  def initialize(attributes = {})
    @size_x = attributes[:size_x]
    @size_y = attributes[:size_y]
    @field_coordinates = []
    create_field(@size_x, @size_y)
  end

  def field_size
    "X: #{@size_x}, Y: #{@size_y}"
  end

  def coordinates_with_rover
    coordinates = []
    @field.each do |coordinate|
      coordinates << coordinate if coordinate.occupied == true
    end
    coordinates
  end

  private

  def create_field(x_size, y_size)
    (0..x_size).to_a.product((0..y_size).to_a).map do |x, y|
      @field_coordinates << Coordinate.new(x, y)
    end
  end
end

# test = Field.new(size_x: 20, size_y: 20)

# p test
# puts ''
# p test.field_size

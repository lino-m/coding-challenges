require_relative 'location.rb'

class Mars
  attr_accessor :field

  def initialize(attributes = {})
    @size_x = attributes[:size_x]
    @size_y = attritbutes[:size_y]
    create_field(@size_x, @size_y)
    @field = []
  end

  private

  def create_field(x_size, y_size)
    (0...x_size).to_a.product((0...y_size).to_a).map do |x, y|
      @field << Coordinate.new(x, y)
    end
  end
end

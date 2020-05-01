# require_relative '../models/instructions'
require_relative '../models/field'

class Rover
  attr_reader :field
  attr_accessor :position, :orientation

  def initialize(attributes = {})
    @field = attributes[:field]
    @position = attributes[:position] || [0, 0]
    @orientation = attributes[:orientation] || @orientation = 'N'
  end

  def turn_left
    new_direction = {
      'N' => 'W',
      'S' => 'E',
      'E' => 'S',
      'W' => 'N'
    }
    @orientation = new_direction[@orientation]
  end

  def turn_right
    new_direction = {
      'N' => 'E',
      'S' => 'W',
      'E' => 'N',
      'W' => 'S'
    }
    @orientation = new_direction[@orientation]
  end

  def move
    if @orientation == 'S' || 'N'
      move_y_axis
    else
      move_x_axis
    end
  end

  def current_position
    puts 'New Rover Location!'
    puts "Location: #{@position}"
    puts "Orientation: #{@orientation}"
  end

  private

  def move_x_axis
    if @orientation == 'E'
      @position[0] += 1
    else
      @position[0] -= 1
    end
  end

  def move_y_axis
    if @orientation == 'N'
      @position[1] += 1
    else
      @position[1] -= 1
    end
  end
end

# field = Field.new(size_x: 5, size_y: 5)
# orientation = 'N'
# position = [1, 2]
# rover = Rover.new(field: field, orientation: orientation, position: position)

# # 1
# rover.turn_left
# rover.move
# # 2
# rover.turn_left
# rover.move
# # 3
# rover.turn_left
# rover.move
# # 4
# rover.turn_left
# rover.move

# rover.move

# p rover.orientation
# p rover.position

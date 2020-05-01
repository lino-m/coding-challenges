require_relative '../models/field'

class Instructions
  def initialize(rover)
    @rover = rover
    @orientation = @rover.orientation # .dup added in other solution
    @position = @rover.position # .dup added in other solution
  end

  def execute
  end

end

# ROVER SHOULD TURN LEFT

class Left < Instructions
  NEW_DIRECTION = {
    'N' => 'W',
    'S' => 'E',
    'E' => 'S',
    'W' => 'N'
  }

  def execute
    @rover.turn_left(turn(@orientation), @position)
  end

  def turn(orientation)
    NEW_DIRECTION[orientation.to_s]
  end
end

# ROVER SHOULD TURN RIGHT

class Right < Instructions
  NEW_DIRECTION = {
    'N' => 'E',
    'S' => 'W',
    'E' => 'N',
    'W' => 'S'
  }

  def execute
    @rover.turn_right(turn(@orientation), @position)
  end

  def turn(orientation)
    NEW_DIRECTION[orientation.to_s]
  end
end

# ROVER SHOULD MOVE FOREWARD

class Forward < Instructions
  def execute
    @rover.repostition(@orientation, move)
  end

  def move
    get_coordinates
  end

  private

  def get_coordinates
    @position
  end

end

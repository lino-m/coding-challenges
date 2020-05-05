require_relative '../views/mars_view'
require_relative '../models/field'

class MarsController
  def initialize(mars_repository)
    @mars = mars_repository
    @mars_view = MarsView.new
  end

  def create_field
    boundary_x = @mars_view.ask_user_for('X: upper right boundary').to_i
    boundary_y = @mars_view.ask_user_for('Y: upper right boundary').to_i
    new_field = Field.new(size_x: boundary_x, size_y: boundary_y)
    @mars.add_field(new_field)
    @mars_view.success_message('created a field')
  end
end

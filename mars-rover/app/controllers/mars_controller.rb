require_relative '../views/mars_view'
require_relative '../models/field'

class MarsController
  def initialize(mars_repository)
    @mars = mars_repository
    @mars_view = MarsView.new
  end

  def create_field
    # Tell user: you are creating a new field on Mars
    # Via View: Ask user for the size of the field
    ## x coordinate -> store
    boundary_x = @mars_view.ask_user_for('X: upper right boundary').to_i
    ## y coordinate -> store
    boundary_y = @mars_view.ask_user_for('Y: upper right boundary').to_i
    # Creare a new field on mars
    new_field = Field.new(size_x: boundary_x, size_y: boundary_y)
    # Add new field to Mars (repository)
    @mars.add_field(new_field)
    # Feedback to user
    @mars_view.success_message('created a field')
  end
end

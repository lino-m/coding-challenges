require_relative '../views/rovers_view'
require_relative '../models/rover'

class RoversController
  def initialize(rover_repository, mars_repository)
    @rovers = rover_repository
    @mars = mars_repository
    @rovers_view = RoversView.new
    @rover_navigation_mode = 'offline'
  end

  def create_rover
    input = @rovers_view.ask_user_for('Set target configuration for rover? Y/N')
    if input.upcase == 'N'
      rover = set_default_rover
      launch_rover_to_mars(rover)
    elsif input.upcase == 'Y'
      rover = set_target_configuration
      launch_rover_to_mars(rover)
    else
      puts "Invalid Input - Issue command with 'Y' or 'N' to launch the Mission"
    end
    @rovers_view.success_message('launched Rover to Mars, Commander!')
  end

  def navigate_rover
    rover = select_rover
    @rovers_view.advice_user_that('... rover is ready for instructions')
    instructions = @rovers_view.ask_user_for('Enter Instructions:')
    excute_instructions(rover, instructions)
    rover.current_position
  end

  private

  def set_default_rover
    field = @mars.find(0)
    @rovers_view.advice_user_that('The rover will launch on the assigned field')
    @rovers_view.advice_user_that('The rover will land at default position 0,0')
    @rovers_view.advice_user_that('The rovers default orientation in N: North')
    Rover.new(field: field)
  end

  def set_target_configuration
    field = @mars.find(0)
    config = @rovers_view.ask_user_for('Enter Rover Configuration')
    new_config = config.split('').reject { |x| x =~ /\s/ }
    position = [new_config[0].to_i, new_config[1].to_i]
    orientation = new_config[3]
    rover = Rover.new(field: field, position: position, orientation: orientation)
    rover
  end

  def launch_rover_to_mars(rover)
    @rovers.add_rover(rover)
    @rovers_view.advice_user_that('the rover has been launched')
  end

  def select_rover
    all_rovers = @rovers.all
    @rovers_view.display_as_list(all_rovers)
    index = @rovers_view.ask_user_for_index
    rover = @rovers.find(index)
    rover
  end

  def excute_instructions(rover, instructions)
    mediator = instructions.split('').map(&:upcase)
    to_execute = mediator.select { |x| x if %w[L R M].include?(x) }
    to_execute.each do |instuction|
      instuction.upcase
      case instuction
      when 'L' then rover.turn_left
      when 'R' then rover.turn_right
      when 'M' then rover.move
      end
    end
  end
end

class Router
  def initialize(mars_controller, rovers_controller) # (mars_controller, , commands_controller)
    @mars_controller = mars_controller
    @rovers_controller = rovers_controller
    # @commands_controller = commands_controller
    @running = true
  end

  def run
    puts '--------------------------------------------'
    puts 'Welcome to Ground Control, Mission Commander'
    puts '--------------------------------------------'
    while @running == true
      print_operations
      action = ask_commander_for_action
      route_commander_action(action)
    end
    puts 'See you soon, Commander!'
  end

  private

  def print_operations
    puts '1 - Launch new mission to Mars'
    puts '2 - Launch new Rover on Mars'
    puts '3 - Navigate a Rover'
    puts '4 - Get location of your rover'
    puts '5 - Leave Ground Controll'
    # TODO: Add invalid command
  end

  def route_commander_action(action)
    case action
    when 1 then @mars_controller.create_field
    when 2 then @rovers_controller.create_rover
    when 3 then @rovers_controller.navigate_rover
    # when 4 then
    when 5 then stop
    else
      puts 'Commander, the system is not familiar with that command!'
    end
  end

  def ask_commander_for_action
    puts ''
    puts 'This is the list of orders available to you!'
    puts 'Commander, what is your order?'
    user_input = gets.chomp.to_i
    user_input
  end

  def stop
    @running = false
  end
end

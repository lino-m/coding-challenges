class Router
  def initialize(mars_controller) # (mars_controller, rovers_controller, commands_controller)
    @mars_controller = mars_controller
    # @rovers_controller = meals_controller
    # @commands_controller = commands_controller

    @running = true
  end

  def run
    puts '--------------------------------------------'
    puts 'Welcome to Ground Control Mission Commander'
    puts '--------------------------------------------'
    while @running == true
    print_operations
    end
    print 'clear'
  end

  private

  def print_operations
    puts '1 - Launch new mission to mars'
    puts '2 - Launch new Rover to the same field on Mars'
    puts '3 - Navigate a Rover'
    puts '4 - Get locations of all rovers'
    puts '5 - Leave Ground Controll'
  end
end

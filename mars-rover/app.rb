require_relative 'app/repositories/mars'
require_relative 'app/controllers/mars_controller'

require_relative 'app/repositories/rovers'
require_relative 'app/controllers/rovers_controller'

require_relative 'router'

# --- mars

mars_csv = 'data/mars.csv'
mars = Mars.new(mars_csv)
mars_controller = MarsController.new(mars)

# --- rovers

rovers_csv = 'data/rovers.csv'
rovers = Rovers.new(rovers_csv)
rovers_controller = RoversController.new(rovers, mars)

# --- create and run router instance

router = Router.new(mars_controller, rovers_controller)
router.run

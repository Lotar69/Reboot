require_relative 'view'
require_relative 'controller'
require_relative 'army'
require_relative 'router'

army = Army.new
controller = Controller.new(army)
view = View.new
router = Router.new(controller)

router.start
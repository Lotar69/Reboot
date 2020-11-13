require 'csv'
require_relative 'car'
require_relative 'garage'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

garage = Garage.new
controller = Controller.new(garage)

router = Router.new(controller)
router.start
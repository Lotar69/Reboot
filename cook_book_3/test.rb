require_relative 'router'
require_relative 'super_hero'
require_relative 'library'
require_relative 'controller'
require_relative 'view'

repo = Library.new
controller = Controller.new(repo)

router = Router.new(controller)
router.start
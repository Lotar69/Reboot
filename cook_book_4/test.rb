require_relative 'army'
require_relative 'soldier'
require_relative 'view'
require_relative 'controller'

army = Army.new
controller = Controller.new(army)

jerome = Soldier.new('Jerome', '1ere Classe')
loic = Soldier.new('Loic', 'Amiral')
jacques = Soldier.new('Jacques', 'Colonel')
army.add_soldier(jerome)
army.add_soldier(loic)

controller.destroy


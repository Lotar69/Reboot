class Controller
    def initialize(army)
        @army = army
        @view = View.new
    end

    def list
        troups = @army.all
        @view.display_soldiers(troups)
    end

    def create
        @view.msg_create_soldier
        name = @view.msg_create_soldier_name
        grade = @view.msg_create_soldier_grade
        soldier_new = Soldier.new(name, grade)
        @army.add_soldier(soldier_new)
    end

    def destroy
        list
        id = @view.msg_delete_soldier
        chosen = @army.find_soldier(id)
        @army.remove_soldier(chosen)
        list
    end
end
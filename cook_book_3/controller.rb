class Controller
    def initialize (library)
    @library = library
    @view = View.new            
    end

    def list
        #demander a l'utilisateur ce qu'il souhaite faire
        super_heroes = @library.all
        #1 afficher la liste des heroes
        @view.display_super_heroes(super_heroes)
    end
        
    def create
        @view.create_super_hero_message
        name = @view.name_of_the_super_hero
        power = @view.power_of_the_super_hero
        editor = @view.editor_of_the_super_hero
        new_one = Super_hero.new(name, power, editor)
        @library.add_super_hero(new_one)
    end

    def destroy
        list
        id = @view.destroy_super_hero_message
        chosen = @library.find_super_hero(id)
        @library.remove_super_hero(chosen)
        list
    end
end
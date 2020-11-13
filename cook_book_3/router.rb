class Router
    def initialize(controller)
        @controller = controller
    end

    def start
        loop do
            puts "-----------------------"
            menu
            puts "-----------------------"
            puts "Que voulez vous faire ?"
            puts "-----------------------"
            action
        end
    end

    def menu
        puts "1. Listez les Super Heros."
        puts "2. Créer un Super Hero."
        puts "3. Supprimer un Super Hero."
        puts "4. Quitter le programme."        
    end

    def action
        user_input = gets.chomp.to_i
        case user_input
        when 1
            @controller.list
        when 2
            @controller.create
        when 3
            @controller.destroy
        when 4
            stop
        end
    end
end
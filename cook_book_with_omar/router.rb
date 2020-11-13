class Router
    def initialize(controller)
        @controller = controller
    end
    def start
        loop do 
            puts "-----------------------"
            puts " "
            menu
            puts "-----------------------"
            puts "Que voulez vous faire ?"
            puts "-----------------------"
            action
        end
    end

    def menu
        puts "1. Listez les voitures."
        puts "2. Créer une voiture."
        puts "3. Détruire une voiture."
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
class Router
    def initialize(controller)
        @controller = controller
        @running = true
    end

    def stop
        @running = false
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
        puts "1. List the soldiers."
        puts "2. Create a soldier."
        puts "3. Delete a Soldier."
        puts "4. Leave the program."        
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
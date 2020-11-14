class View
    def display_soldiers(troups)
        troups.each_with_index do |soldier, index|
            puts "#{index + 1}. | Identity. #{soldier.name} | Grade. #{soldier.grade}"
        end
    end

    def msg_create_soldier
        puts "Please Create a Soldier."
    end

    def msg_create_soldier_name
        puts "First choose the name."
        print "> "
        gets.chomp
    end

    def msg_create_soldier_grade
        puts "Second chose the grade."
        print "> "
        gets.chomp
    end

    def msg_delete_soldier
        puts "Please choose the soldier you want to delete."
        print "> "
        gets.chomp.to_i - 1

    end
end
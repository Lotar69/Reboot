class View

    def display_super_heroes(super_heroes)
        super_heroes.each_with_index do |super_hero, index|
            puts "#{index + 1}. | Name. #{super_hero.name} | Power. #{super_hero.power} | Editor. #{super_hero.editor}"
        end
    end

    def create_super_hero_message
        puts "Would you want to create a super hero ?"
    end

    def name_of_the_super_hero
        puts "Which name?"
        print "> "
        gets.chomp
    
    end

    def power_of_the_super_hero
        puts "Which power?"
        print "> "
        gets.chomp    
    end

    def editor_of_the_super_hero
        puts "Which editor?"
        print "> "
        gets.chomp
    end

    def destroy_super_hero_message
        puts "Would you want to delete a super hero?"
        print "> "
        gets.chomp.to_i - 1
    end
end
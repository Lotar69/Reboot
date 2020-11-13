require 'csv'

class Library
    def initialize
        @csv_file_path = 'super_hero_list.csv'
        @super_heroes = []
        load_csv
    end

    def all
        @super_heroes
    end

    def find_super_hero(index)
        @super_heroes[index]
    end

    def add_super_hero(super_hero)
        @super_heroes << super_hero
        save_csv
    end

    def remove_super_hero(super_hero)
        @super_heroes.delete(super_hero)
        save_csv
    end

    private

    def load_csv
        CSV.foreach(@csv_file_path) do |row|
            @super_heroes << Super_hero.new(row[0], row[1], row[2])
        end
    end

    def save_csv
        CSV.open(@csv_file_path, 'wb') do |csv|
            @super_heroes.each do |super_hero|
            csv << [super_hero.name, super_hero.power, super_hero.editor]
            end
        end
    end
end
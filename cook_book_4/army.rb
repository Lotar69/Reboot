require 'csv'
require_relative 'soldier'

class Army
    def initialize
        @csv_file_path = 'file.csv'
        @troups = []
        load_csv
    end
    
    def all
        @troups
    end

    def add_soldier(soldier)
        @troups << soldier
        save_csv
    end

    def remove_soldier(soldier)
        @troups.delete(soldier)
        save_csv
    end

    def find_soldier(index)
        @troups[index]
    end

    private

    def load_csv
        CSV.foreach(@csv_file_path) do |row|
        @troups << Soldier.new(row[0], row[1])
        end
    end

    def save_csv
        CSV.open(@csv_file_path, 'wb') do |csv|
            @troups.each do |soldier|
            csv << [soldier.name, soldier.grade]
            end
        end
    end
end
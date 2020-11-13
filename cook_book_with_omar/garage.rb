class Garage
    def initialize
        @csv_file_path = 'garage.csv'
        @cars = []
        load_csv
    end

    def all
        @cars
    end

    def find_car(index)
        @cars[index]
    end

    def destroy(car)
        @cars.delete(car)
        save_csv       
    end

    def add_car(car)
        @cars << car
        save_csv       
    end

    private

    def load_csv
        CSV.foreach(@csv_file_path) do |row|
            @cars << Car.new(row[0], row[1], row[2])
        end
    end

    def save_csv
        CSV.open(@csv_file_path, 'wb') do |csv|
            @cars.each do |car|
            csv << [car.model, car.brand, car.year]
            end
        end
    end 
end

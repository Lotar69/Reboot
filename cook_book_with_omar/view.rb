class View
    def display_cars(cars)
        cars.each_with_index do |car, index|
            puts "#{index + 1}. | Model. #{car.model} | Brand. #{car.brand} | Year. #{car.year}"
        end
    end

    def msg_create_car
        puts "Please create your car!"
    end

    def choose_your_brand
        puts "What is the brand?!"
    print "> "
    gets.chomp
    end

    def choose_your_year
        puts "How old is it?!"
    print "> "
    gets.chomp
    end

    def choose_your_model
        puts "Choose your model!"
    print "> "
    gets.chomp
    end

    def choose_the_car_you_want_to_destroy
    puts "Choose the car you want to destroy!"
    print "> "
    gets.chomp.to_i - 1
    end

    def find_by_index
    
    end

end

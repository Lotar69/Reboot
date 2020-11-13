class Restaurant
    attr_accessor :name, :city, :clients
    def initialize(name, city, clients)
        @name = name
        @city = city
        @clients = []
    end

    def print_clients
        @clients.each_with_index do |client, index|
            puts "client #{index+1} => #{client}"
        end
    end

    def self.categories
        return %w(bistrot gastro chinese_restaurant japanese_restaurant)
    end

    def self.price_for(category)
        case category
        when "japanese"
            price = 13
        when "italian"
            price = 20
        end
        return price
    end
end

class FastFood < Restaurant
    attr_accessor :preparation_time
    def initialize(name, city, preparation_time)
        super(name, city)
        @preparation_time = preparation_time
    end

    def nameer
        return "Fast Food: #{name.capitalize}"
    end
end

class Gastronomic

    def initialize(name, city, stars)
        @name = name
        @city = city
        @stars = stars
    end
end

#puts Restaurant.categories
puts Restaurant.price_for("italian")

#p mcdonald = FastFood.new("mcdo", "paris", 10)
#mcdonald.clients << "jack" << "loic"
#puts mcdonald.print_clients




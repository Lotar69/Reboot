#nom de fichier restaurant.rb
class Restaurant
    attr_accessor :name, :city, :prices, :clients

    def initialize(name, city, prices, clients)
        @name = name
        @city = city
        @prices = prices
        @clients = []
    end

    def print_clients
        clients.each_with_index do |client, index|
            "client #{index+1} is #{client}"
        end
    end

    def change_prices
    @prices += 1
    end

    def self.categories
        return %w(bistrot brasserie gastro)
    end

    def self.price_for(category)
        case category
        when "bistrot"
            price = 20
        when "brasserie"
            price = 10
        end
    end
    

end

class FastFood < Restaurant
    attr_accessor :preparation_time

    def initialize(name, city, prices, clients, preparation_time)
        super(name, city, prices, clients)
        @preparation_time = preparation_time
    end
end

class Gastro <Restaurant
    def initialize(stars)
    end
end

mcdonalds = FastFood.new("mcdo", "bordeaux", 10, " ", "5min")

p mcdonalds

p mcdonalds.change_prices

puts Restaurant.categories

puts Restaurant.price_for("brasserie")
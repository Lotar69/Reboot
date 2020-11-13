class Chief
    def initialize(name, years, restaurant)
        @name = name
        @years = years
        @restaurant = restaurant
    end
end

class Restaurant
    attr_accessor :name, :city, :prices, :clients, :chief

    def initialize(name, city, prices, clients, chief_name, chief_years)
        @name = name
        @city = city
        @prices = prices
        @clients = []
        @chief = Chief.new(chief_name, chief_years, self)
    end
end

gastro = Restaurant.new("Le Bristol", "Lyon", 100, "Dolux", "Frechon", 20)

p gastro.chief
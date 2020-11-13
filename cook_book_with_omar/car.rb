class Car
    attr_reader :model, :brand, :year
    def initialize(model, brand, year)
        @model = model
        @brand = brand
        @year = year
    end
end
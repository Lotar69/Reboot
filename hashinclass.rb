class Hero
    def initialize (attributes = {})
    @name = attributes[:name]
    @speciality = attributes[:specialty]
    @side = attributes[:side]
    end
end

ironman = Hero.new(:name => ("IronMan"), side: "Good", specialty: "Genius")

p ironman
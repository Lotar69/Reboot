class Animal
    attr_reader :name, :talk
    attr_writer 
    def initialize(name)
        @name = name
        @talk = talk
    end

end

class Lion < Animal
    def talk
    puts "Lion roars"
    end
end

class Meerkat < Animal
    def talk
    puts "Meerkat bark"
    end
end

class Warthog < Animal
    def talk
        puts "Warthog grunt"
    end
end

pumba = Lion.new("Pumba")
p pumba
p pumba.talk
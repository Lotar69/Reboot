class Controller
    def initialize(repo)
        @repo = repo
        @view = View.new
    end

    def list
        cars = @repo.all
        @view.display_cars(cars)
    end

    def create
    #1.On propose à l'utilisateur de créer une voiture (puts).
        @view.msg_create_car
    #2. l'utilisateur rentre les infos suivantes (model, la brand & le year).
        model = @view.choose_your_model
        brand = @view.choose_your_brand
        year = @view.choose_your_year
    #3. L'utilisateur crée une voiture (création de l'instance de la voiture).
        car = Car.new(model, brand, year)
    #4. L'objet crée et envoyé / sauvegardé dans le CSV.
        @repo.add_car(car)
    end

    def destroy
    #1. On affiche la liste des voitures avec leur index.
        list
    #2. On propose à l'utilisateur de detruire une voiture via l'index (puts).
        id = @view.choose_the_car_you_want_to_destroy
        car = @repo.find_car(id)
    #3. Détruire la voiture du garage
        @repo.destroy(car)
    #4. Afficher la liste des voitures dans le garage
        list
    end
end
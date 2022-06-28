class Plant < ApplicationRecord

    # GET /plants

    def index
        plants = Plant.all
        render json: plants
    end

    #GET /plands/:id

    def show
    plant = plant.find_by(id: params[:id])
    render json: plant
    end

    #Post /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private
     
    def plant_params
        params..permit(:name, :image, :price)
    end
    
    






end

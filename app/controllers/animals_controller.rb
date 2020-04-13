class AnimalsController < ApplicationController

    before_action :find_animal, only: [:show, :edit, :update]

    def index
        @animals = Animal.all
    end

    def show

    end

    def new
        
    end
    
    def create

    end

    def edit
        
    end

    def update

    end
    
    private

    def find_animal 
        @animal = Animal.find(params[:id])
    end

    def animal_params
        params.require(:animal).permit(:name, :age, :breed, :shelter_id, :bio)
    end

end


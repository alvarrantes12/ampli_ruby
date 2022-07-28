module Api  
  class AnimalsController < ApplicationController
    before_action :set_animal, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token
    
    def index
      @animals = Animal.all
    end

    
    def show
    end

    
    def new
      @animal = Animal.new
    end

    
    def edit
    end

    
    def create
      @animal = Animal.new(animal_params)

      
        if @animal.save
          render "api/animals/show", status: :created
        else
          render :new, status: :unprocessable_entity
        end
      
    end

    
    def update
      
        if @animal.update(animal_params)
          render "api/animals/show", status: :created
        else
          render :new, status: :unprocessable_entity
        end
      
    end

    
    def destroy
      @animal.destroy
      render "api/animals/show", status: :created      
    end

    private
      
      def set_animal
        @animal = Animal.find(params[:id])
      end

      
      def animal_params
        params.require(:animal).permit(:name, :specie)
      end
  end
end
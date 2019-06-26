class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :create, :update, :destroy]

    def index
        @dogs = Dog.all
    end

    def new
    
    end

    def create
        if @dog.valid?
            @dog.save
            redirect_to dogs_path(@dog)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end
    
    def update 
    end
    
    def destroy
    end

private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    def find_dog
        @dog = Dog.find(params[:id])
    end
end

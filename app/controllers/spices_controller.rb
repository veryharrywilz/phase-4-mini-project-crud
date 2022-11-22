class SpicesController < ApplicationController

    def index
        render json: Spice.all
    end

    # def show
    #     spice = Spice.find_by(id: params[:id])
    #     render json: spice 
    # end

    def destroy
        spice = Spice.find_by(id: params[:id])
        render json: spice.destroy
    end

    def create
        spice = Spice.create(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice, status: :created 
    end

    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(params.permit(:title, :image, :description, :notes, :rating))
        render json: spice
    end



end

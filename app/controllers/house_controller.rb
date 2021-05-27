class HouseController < ApplicationController
    before_action :set_house, only: [:show, :edit, :update, :destroy]
    def index
        @houses = House.all
    end

    def show
    end

    def new
        @house = House.new
    end

    def create
        @house = House.new(house_params)
        if @house.save
            redirect_to @house
        else
            render :new
        end
    end


    private
    def set_house
        @house = House.find(params[:id])
    end

    def house_params
        params.require(:house).permit(:name)
    end
end

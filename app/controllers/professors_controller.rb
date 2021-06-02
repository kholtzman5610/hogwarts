class ProfessorsController < ApplicationController
    before_action :set_professor, only: [:show, :edit, :update, :destroy] 
    def index
      @professors = Professor.order(:first_name)
    end
      
    def show
    end
  
    def new
      @professor = Professor.new
    end
  
    def create
      @professor = Professor.new(professor_params)
      if @professor.save
        redirect_to @professor
      else
        render :new
      end
    end
      
      
    private
    def set_professor
      @professor = Professor.find(params[:id])
    end
  
    def professor_params
      params.require(:professor).permit(:first_name, :last_name, :house_id)
    end
end

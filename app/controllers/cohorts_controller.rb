class CohortsController < ApplicationController
    before_action :set_cohort, only: [:show, :edit, :update, :destroy]
    def index
        @cohorts = Cohort.order(:name)
    end

    def show
    end

    def new
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.new(cohort_params)
        if @cohort.save
            redirect_to @cohort
        else
            render :new
        end
    end


    private
    def set_cohort
        @cohort = Cohort.find(params[:id])
    end

    def cohort_params
        params.require(:cohort).permit(:name, :professor_id, :course_id)
    end
end

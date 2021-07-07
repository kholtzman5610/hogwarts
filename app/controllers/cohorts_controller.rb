class CohortsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
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

    def update
        if @cohort.update(cohort_params)
          flash.notice = "The class record was updated successfully."
          redirect_to cohorts_path
        else
          render :edit
         end
    end
    
    def destroy
        @cohort.destroy
        respond_to do |format|
            format.html { redirect_to cohorts_path, notice: 'Class was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    def set_cohort
        @cohort = Cohort.find(params[:id])
    end

    def cohort_params
        params.require(:cohort).permit(:name, :professor_id, :course_id)
    end

    def catch_not_found(e)
        Rails.logger.debug("We had a not found exception.")
        flash.alert = e.to_s
        redirect_to cohorts_path
      end
end

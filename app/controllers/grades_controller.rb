class GradesController < ApplicationController
    def index
        @cohort = Cohort.find(params[:cohort_id])
        @houses = House.all
        redirect_to '/courses'
    end

    def new
        @cohort = Cohort.find(params[:cohort_id])
        redirect_to '/courses'
    end


    def create
        @grade = Grade.create(grade_params)
        @cohort = Cohort.find(params[:cohort_id])
        redirect_to "/cohorts/#{params[:cohort_id]}/grades"
    end


    def edit
        @cohort = Cohort.find(params[:cohort_id])
        @grade = Grade.find(params[:id])
        @student = Student.where(id: @grade.student_id)[0]
    end

    def update
        @grade = Grade.find(params[:id])
        @grade.update(grade_params)
        redirect_to "/cohorts/#{params[:cohort_id]}/"
    end

    def destroy
        @grade = Grade.find(params[:id])
        id = @grade.cohort_id
        @grade.destroy
        redirect_to "/cohorts/#{id}/grades"
    end

    private

    def grade_params
        params.require(:grade).permit(:student_id, :cohort_id, :mark)
    end
end
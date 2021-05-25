class CourseController < ApplicationController
    before_action :set_course, only: [:show, :edit, :update, :destroy]
    def index
        @courses = Course.all
    end

    def show
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to @course
        else
            render :new
        end
    end


    private
    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permirt(:name)
    end
end

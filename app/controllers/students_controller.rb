class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
    before_action :set_student, only: [:show, :edit, :update, :destroy] 

    def index
      @students = Student.all
    end
      
    def show
    end
  
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      if @student.save
        flash.notice = "The student record was created successfully."
        redirect_to students_path
      else
        render :new
      end
    end

    def update
      if @student.update(student_params)
        flash.notice = "The student record was updated successfully."
        redirect_to students_path
      else
        render :edit
       end
     end
      
    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to students_path, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
                              
    private
    def set_student
      @student = Student.find(params[:id])
    end
  
    def student_params
      params.require(:student).permit(:first_name, :last_name, :house_id)
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception.")
      flash.alert = e.to_s
      redirect_to students_path
    end
end
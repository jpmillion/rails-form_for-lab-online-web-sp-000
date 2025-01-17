class StudentsController < ApplicationController

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def new
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end
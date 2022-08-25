class AdminController < ApplicationController

    def index
        
    end

    def inscripts
        @students_inscripts = Student.where(status: false)
    end

    def matriculates
        @students_matriculates = Student.where(status: true)
    end

    def matriculate_student
        student = Student.find_by(id: params[:id])
        student.status = true
        student.save
    end
end

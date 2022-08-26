class AdminController < ApplicationController
    # before_action :authenticate_user!, only: %[matriculate_student]
    include Container::Import[:repo, :create_matriculation]

    def index
        
    end

    def inscripts
        @students_inscripts = repo.students_inscripts
    end

    def matriculates
        @students_matriculates = repo.students_matriculates
    end

    def student_details
        @student_details = repo.details_student(params[:id])
    end

    def matriculate_student
        create_matriculation.call(params[:id])

        redirect_to action: "index" and return
    end
end

class StudentController < ApplicationController
    include Container::Import[:create_inscription]

    def register_student
        @student = Student.new
    end

    def create
        create_inscription.call(params)
    end
end

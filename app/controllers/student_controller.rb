class StudentController < ApplicationController

    def register_student
        @student = Student.new
    end

    def create
        binding.pry
        # Business::CreateInscription.new.call
    end
end

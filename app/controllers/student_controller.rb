class StudentController < ApplicationController
    include Container::Import[:create_inscription]

    def register_student
        @student = Student.new
    end

    def create
        result = create_inscription.call(set_params)
        redirect_to action: 'confirmation_register', result: result.success? ? result.value! : result.failure
    end

    def confirmation_register
        @result = params[:result]
    end

    private

      def set_params
        params.permit(:student_name,:email,:cpf,:birth,:shift,:serie,:city,:state,:responsible_name,:responsible_email,:responsible_phone)
    end
end

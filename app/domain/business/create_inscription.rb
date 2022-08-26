require 'dry/monads'

module Business
    class CreateInscription
        include Dry::Monads[:result, :do]
        
        def call(params)
            params_sanitize = yield sanitize_params(params)
            params_validated = yield validate_attrivutes(params)
            inscription = yield save_inscription(params)

            Success(inscription)
        end

        def sanitize_params(params)
            Success(params.permit(:student_name,:email,:cpf,:birth,:shift,:serie,:city,:state,:responsible_name,:responsible_email,:responsible_phone))
        end

        def validate_attributes(params)
            student = Student.find_by(cpf: params[:email])

            if student.present?
                return Failure('Estudante já cadastrado')
            end

            Success(params)
        end

        def save_inscription(params)
            Success(Student.create(params))
        end
    end
end
require 'dry/monads'

module Business
    class CreateInscription
        include Dry::Monads[:result, :do]
        
        def call(params)
            cpf_validated = yield validate_cpf(params)
            date_validated = yield validate_date(cpf_validated)
            inscription = yield save_inscription(date_validated)

            Success('Aluno inscrito com sucesso')
        end

        def validate_cpf(params)
            student = Student.find_by(cpf: params[:cpf])

            if student.present?
                return Failure('Cpf já cadastrado')
            end

            Success(params)
        end

        def validate_date(params)
            date_student = Date.parse params[:birth]
            
            if date_student > Date.today
                return Failure('Data inválida: Insira uma data no passado')
            end

            Success(params)
        end

        def save_inscription(params)
            return Success(Student.create(params))
        end
    end
end
require 'dry/monads'

module Business
    class MatriculationStudent
        include Dry::Monads[:result, :do]

        def call(id)
            student = yield get_student(id)
            student_matriculate = yield matriculate(student)

            Success(student_matriculate)
        end

        def get_student(id_student)
            student = Student.find_by(id: id_student)
            Success(student)
        end

        def matriculate(student)
            student.status = true
            student.save

            Success(student)
        end
    end
end
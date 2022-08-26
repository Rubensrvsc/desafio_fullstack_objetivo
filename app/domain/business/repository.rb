module Business
    class Repository
        
        def students_inscripts
            Student.where(status: false)
        end

        def students_matriculates
            Student.where(status: true)
        end

        def details_student(id_student)
            Student.find_by(id: id_student)
        end
    end
end
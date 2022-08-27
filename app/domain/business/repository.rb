module Business
    class Repository
        
        def students_inscripts(page)
            Student.where(status: false).page(page).per(3)
        end

        def students_matriculates(page)
            Student.where(status: true).page(page).per(3)
        end

        def details_student(id_student)
            Student.find_by(id: id_student)
        end

        def csv_inscripts
            Student.where(status: false).generate_csv
        end
    end
end
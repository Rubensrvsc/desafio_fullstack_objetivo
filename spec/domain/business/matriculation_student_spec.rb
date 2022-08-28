require 'rails_helper'

describe 'MatriculationStudent' do
    context 'matriculation' do
        before(:each) do
            @params = create_list(:student, 5)
            @student_id = Student.first.id
            @result_matriculation = Business::MatriculationStudent.new.call(@student_id)
        end
        
        it { expect(@result_matriculation.success?).to be_truthy }

        it { expect(Student.where(status: false).count).to eq(4) }

        it { expect(Student.where(status: true).count).to eq(1) }
    end
    
end
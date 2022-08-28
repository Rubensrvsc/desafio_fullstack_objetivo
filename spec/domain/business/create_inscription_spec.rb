require 'rails_helper'

describe 'CreateInscription' do
    context '#success' do
        before(:each) do
            @params = {
                student_name: Faker::Name.name,
                birth: Faker::Date.birthday(min_age: 1, max_age: 20).to_s,
                cpf: Faker::IDNumber.brazilian_citizen_number,
                email: Faker::Internet.email,
                serie: Faker::Number.decimal_part(digits: 2),
                shift: "Manhã",
                city: "Teresina",
                state: "Piauí",
                responsible_name: Faker::Name.name,
                responsible_email: Faker::Internet.email,
                responsible_phone: Faker::PhoneNumber.cell_phone
            }
            @result = Business::CreateInscription.new.call(@params)
        end

        it { expect(@result.success?).to be_truthy }

        it { expect(@result.value!).to eq('Aluno inscrito com sucesso') }

        it { expect(Student.count).to eq(1) }
    end
    
end
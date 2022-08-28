FactoryBot.define do
  factory :student do
    student_name { Faker::Name.name }
    birth { Faker::Date.birthday(min_age: 1, max_age: 20) }
    cpf { Faker::IDNumber.brazilian_citizen_number }
    email { Faker::Internet.email }
    serie { Faker::Number.decimal_part(digits: 2) }
    shift { "Manhã" }
    city { "Teresina" }
    state { "Piauí" }
    responsible_name { Faker::Name.name }
    responsible_email { Faker::Internet.email }
    responsible_phone { Faker::PhoneNumber.cell_phone }
    status { false }
  end
end

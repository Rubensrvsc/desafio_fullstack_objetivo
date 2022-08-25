FactoryBot.define do
  factory :student do
    student_name { "MyString" }
    birth { "2022-08-25" }
    cpf { "MyString" }
    email { "MyString" }
    serie { 1 }
    shift { "MyString" }
    city { "MyString" }
    state { "MyString" }
    responsible_name { "MyString" }
    responsible_email { "MyString" }
    responsible_phone { "MyString" }
    status { false }
  end
end

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'wxcvbnaa' }
    password_confirmation { 'wxcvbnaa' }
  end
end

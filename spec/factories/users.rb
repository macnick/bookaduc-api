FactoryBot.define do
  factory :user do
    name { Faker::Name.unique.name }
    password { Faker::Internet.password }
  end
end
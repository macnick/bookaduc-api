FactoryBot.define do
  factory :bike do
    name { Faker::Name.unique.name }
    displacement { Faker::Number.number(digits: 4) }
    power { Faker::Number.number(digits: 3) }
    torque { Faker::Number.number(digits: 3) }
    weight { Faker::Number.number(digits: 3) }
    image { Faker::Internet.url }
  end
end

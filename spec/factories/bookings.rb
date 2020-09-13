FactoryBot.define do
  factory :booking do
    user_id { Faker::Number.number(digits: 1) }
    bike_id { Faker::Number.number(digits: 1) }
  end
end

# check how to create fake relationships

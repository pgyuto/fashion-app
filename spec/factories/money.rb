FactoryBot.define do
  factory :money do
    balance { Faker::Number.between(from: 0, to: 999_999) }
    association :user
  end
end

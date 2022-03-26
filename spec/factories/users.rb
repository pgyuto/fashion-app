FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials(number: 2) }
    email { Faker::Internet.free_email }
    password = Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1)
    password { password }
    password_confirmation { password }
  end
end

FactoryBot.define do
  factory :item do
    text { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 2, to: 6) }
    color_id { Faker::Number.between(from: 2, to: 15) }
    maker { Faker::Lorem.sentence }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

FactoryGirl.define do
  factory :blog do
    title { Faker::Lorem.sentence }
  end
end

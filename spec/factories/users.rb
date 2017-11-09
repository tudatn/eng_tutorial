FactoryGirl .define do
  factory :user do
    # username "john"
    # email "john@eng.com"
    # password "simple"
    # username "john"
    sequence(:username) { |n| "user#{n}@eng.com"}
    email { Faker::Internet.email }
    password "simple"
  end
end

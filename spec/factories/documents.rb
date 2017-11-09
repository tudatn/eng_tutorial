FactoryGirl .define do
  factory :document do
    association :user
    name 'doc.1'
    description 'first document'
    file 'file.1'
  end
end

FactoryBot.define do
  factory :address do
    patient { nil }
    street { "MyString" }
    zip { "MyString" }
    city { "MyString" }
  end
end

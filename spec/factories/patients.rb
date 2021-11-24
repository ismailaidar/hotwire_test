FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    dob { "2021-11-24" }
    phone { "MyString" }
    email { "MyString" }
    active { false }
  end
end

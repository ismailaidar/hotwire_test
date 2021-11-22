FactoryBot.define do
  factory :post do
    id { 1 }
    title { "MyString" }
    body { "MyString" }
    user_id { 1 }
    created_at { "2021-11-22 07:19:11" }
    updated_at { "2021-11-22 07:19:11" }
  end
end

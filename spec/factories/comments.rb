FactoryBot.define do
  factory :comment do
    id { 1 }
    body { "MyText" }
    user_id { 1 }
    post_id { 1 }
    created_at { "2021-11-22 07:18:53" }
    updated_at { "2021-11-22 07:18:53" }
  end
end

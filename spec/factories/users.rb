FactoryBot.define do
  factory :user do
    id { 1 }
    email { "MyString" }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
    reset_password_sent_at { "2021-11-22 07:18:51" }
    remember_created_at { "2021-11-22 07:18:51" }
    first_na { "MyString" }
    last_name { "MyString" }
    created_at { "2021-11-22 07:18:51" }
    updated_at { "2021-11-22 07:18:51" }
  end
end

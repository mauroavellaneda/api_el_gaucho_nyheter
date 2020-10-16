FactoryBot.define do
  factory :user do
    email { "user@random#{rand(0..999)}.com" }
    password { "password" }
    password_confirmation { "password" }
    role { "registered" }
  end
end

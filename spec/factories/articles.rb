FactoryBot.define do
  factory :article do
    title { "MyString" }
    lead { "MyText" }
    content { "MyString" }
    category { "sports" }
    location { "Sweden" }
    association :journalist, factory: :user
  end
end

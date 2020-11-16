FactoryBot.define do
  factory :article do
    title { "MyString" }
    lead { "MyText" }
    content { "MyString" }
    category { "news" }
    association :journalist, factory: :user
  end
end

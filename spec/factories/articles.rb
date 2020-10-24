FactoryBot.define do
  factory :article do
    title { "MyString" }
    lead { "MyText" }
    content { "MyString" }
    category { "local" }
    association :journalist, factory: :user
  end
end

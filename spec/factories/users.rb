FactoryBot.define do
  factory :user do
    name { "John Doe" }
    email { "john@example.com" }

    factory :invalid_user do
      name { "John Doe" }
    end
  end
end

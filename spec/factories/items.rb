FactoryBot.define do
  factory :item do
    name "Apple MacBook"
    price 999.99
    description "It has the brightest, most colorful Mac notebook display ever. "
    sequence(:slug) { |n| "macbook-#{n}" }
    category
  end
end

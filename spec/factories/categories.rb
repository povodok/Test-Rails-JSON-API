FactoryBot.define do
  factory :category do
    name "Notebooks"
    sequence(:slug) { |n| "notebooks#{n}" }
  end
end

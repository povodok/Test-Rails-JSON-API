FactoryBot.define do
  factory :category do
    name "Notebooks"
    sequence(:slug) { |n| "notebooks_#{n}" }
  end
end

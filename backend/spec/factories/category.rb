FactoryBot.define do
  factory :category do
    name { Faker::Food.ethnic_category }
    slug { 'my-category' }

    trait :with_recipe do
      after(:create) do |category|
        recipe = create(:recipe)
        create(:recipe_category, recipe: recipe, category: category)
      end
    end
  end
end

FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    slug { 'my-slug' }
    pre_time_minutes { 15 }
    cook_time_minutes { 60 }
    rating { 4.5 }
    author { "Chef Juan" }

    trait :with_category do
      after(:create) do |recipe|
        category = create(:category, name: Faker::Food.category)
        create(:recipe_category, recipe: recipe, category: category)
      end
    end
  end
end

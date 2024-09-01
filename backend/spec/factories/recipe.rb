FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    slug { 'my-slug' }
    total_time { 15 }
    rating { 4.5 }

    trait :with_category do
      after(:create) do |recipe|
        category = create(:category, name: Faker::Food.category)
        create(:recipe_category, recipe: recipe, category: category)
      end
    end
  end
end

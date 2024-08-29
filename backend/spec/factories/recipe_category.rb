FactoryBot.define do
  factory :recipe_category do
    recipe { create(:recipe) }
    category { create(:category) }
  end
end

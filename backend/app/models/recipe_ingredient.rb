class RecipeIngredient < ApplicationRecord
  # relationships
  belongs_to :recipe
  belongs_to :ingredient
end

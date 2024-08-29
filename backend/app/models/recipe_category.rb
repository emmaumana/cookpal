class RecipeCategory < ApplicationRecord
  # relationships
  belongs_to :recipe
  belongs_to :category
end

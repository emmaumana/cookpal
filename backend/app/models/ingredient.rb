# typed: strict

class Ingredient < ApplicationRecord
    # validations
    validates :title, presence: true

    # relationships
    has_many :recipe_ingredients, class_name: 'RecipeIngredient', dependent: :destroy
    has_many :recipes, through: :recipe_ingredients, class_name: 'Recipe'

    # scopes
    scope :by_id, ->(id) { where(id: id) }
end

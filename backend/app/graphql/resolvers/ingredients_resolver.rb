module Resolvers
  class IngredientsResolver < BaseResolver
    type [Types::IngredientType], null: false
    argument :page, Int, default_value: 1

    def resolve(page:)
      ::Ingredient.order('created_at DESC').page(page).per_page(50)
    end
  end
end

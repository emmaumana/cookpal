module Resolvers
  class IngredientResolver < BaseResolver
    type Types::IngredientType, null: false
    argument :id, ID

    def resolve(id:)
      ::Ingredient.find_by(id: id)
    end
  end
end

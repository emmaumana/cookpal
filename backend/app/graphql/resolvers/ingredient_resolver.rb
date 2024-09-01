# typed: strict

module Resolvers
  class IngredientResolver < BaseResolver
    type Types::IngredientType, null: false
    argument :id, ID

    sig { params(id: String).returns(T.nilable(Ingredient)) }
    def resolve(id:)
      ::Ingredient.by_id(id: id).entries.first
    end
  end
end

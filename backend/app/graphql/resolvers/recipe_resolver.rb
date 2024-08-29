# typed: strict

module Resolvers
  class RecipeResolver < BaseResolver
    type Types::RecipeType, null: false
    argument :id, ID

    sig { params(id: String).returns(T.nilable(Recipe)) }
    def resolve(id:)
      Recipe.by_id(id).entries.first
    end
  end
end

module Resolvers
  class RecipeConnectionResolver < BaseResolver
    type Types::RecipeType.connection_type, null: false
    argument :ids, [ID], required: false
    argument :search, String, required: false

    def resolve(ids: nil, search: nil)
      scope = Recipe.includes(:categories, :ingredients).all
      scope = scope.by_id(ids) if ids.present?
      scope = scope.by_ingredients_search(search) if search.present?

      scope
    end
  end
end

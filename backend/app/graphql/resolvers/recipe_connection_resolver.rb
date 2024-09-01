# typed: strict

module Resolvers
  class RecipeConnectionResolver < BaseResolver
    type Types::RecipeType.connection_type, null: false

    argument :ids, [ID], required: false
    argument :search, String, required: false
    argument :rating_sort, String, required: false
    argument :total_time_sort, String, required: false

    sig do
 params(ids: T.nilable(T::Array[String]),
        search: T.nilable(String),
        rating_sort: T.nilable(String),
        total_time_sort: T.nilable(String)).returns(ActiveRecord::Relation)
    end
    def resolve(ids: nil, search: nil, rating_sort: nil, total_time_sort: nil)
      scope = Recipe.joins(:categories, :ingredients).distinct
      scope = scope.by_id(ids) if ids.present?
      scope = scope.by_ingredients_search(search) if search.present?
      scope = scope.order(rating: rating_sort) if rating_sort.present?
      scope = scope.order(total_time: total_time_sort) if total_time_sort.present?

      scope
    end
  end
end

# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :recipe, resolver: Resolvers::RecipeResolver
    field :recipesConnection, resolver: Resolvers::RecipeConnectionResolver
    field :ingredient, resolver: Resolvers::IngredientResolver
    field :category, resolver: Resolvers::CategoryResolver
  end
end

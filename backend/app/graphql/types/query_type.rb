# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :recipe, resolver: Resolvers::RecipeResolver
    field :recipesConnection, resolver: Resolvers::RecipeConnectionResolver
    field :ingredient, resolver: Resolvers::IngredientResolver
    field :ingredients, resolver: Resolvers::IngredientsResolver
    field :category, resolver: Resolvers::CategoryResolver
    field :categories, resolver: Resolvers::CategoriesResolver
  end
end

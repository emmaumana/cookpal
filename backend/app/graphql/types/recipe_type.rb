# frozen_string_literal: true

module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :slug, String, null: false
    field :description, String
    field :pre_time_minutes, Integer
    field :cook_time_minutes, Integer
    field :rating, Float
    field :author, String
    field :image_url, String
    field :categories, Types::CategoryType.connection_type, null: true
    field :ingredients, Types::IngredientType.connection_type, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
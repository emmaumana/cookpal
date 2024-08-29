# frozen_string_literal: true
# typed: strict

module Mutations
  class CategoryCreate < Mutations::BaseMutation
    description 'Creates a category. Optionally, you can pass an array of recipe IDs to associate with the category.'

    null true
    argument :name, String, required: true
    argument :recipe_ids, [ID], required: false

    field :category, Types::CategoryType
    field :errors, [String], null: false

    sig { params(name: String, recipe_ids: T.nilable(T::Array[String])).returns(T::Hash[Symbol, Symbol]) }
    def resolve(name:, recipe_ids: nil)
      category = Category.new(name: name)
      recipes = find_recipes(recipe_ids) if recipe_ids.present?

      category.recipes << recipes if recipes.present?

      check_and_save(category)
    end

    sig { params(recipe_ids: T.nilable(T::Array[String])).returns(T.nilable(ActiveRecord::Relation)) }
    def find_recipes(recipe_ids)
      return nil if recipe_ids.blank?

      Recipe.by_id(recipe_ids.map(&:to_i))
    end

    sig { params(category: Category).returns(T::Hash[Symbol, Symbol]) }
    def check_and_save(category)
      return { category: category, errors: [] } if category.save

      { category: nil, errors: category.errors.full_messages }
    end
  end
end

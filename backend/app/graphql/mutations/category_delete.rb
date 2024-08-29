# frozen_string_literal: true
# typed:strict

module Mutations
  class CategoryDelete < BaseMutation
    description 'Deletes a category by ID'

    field :category, Types::CategoryType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true

    sig { params(id: String).returns(T::Hash[Symbol, Symbol]) }
    def resolve(id:)
      category = ::Category.find(id.to_i)

      check_and_delete(category)
    end

    sig { params(category: Category).returns(T::Hash[Symbol, Symbol]) }
    def check_and_delete(category)
      return { category: nil, errors: category.errors.full_messages } unless category.destroy

      { category: category, errors: [] }
    end
  end
end

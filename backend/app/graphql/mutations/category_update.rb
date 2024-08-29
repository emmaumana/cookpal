# frozen_string_literal: true
# typed: strict

module Mutations
  class CategoryUpdate < BaseMutation
    description "Updates a category's name by id"

    field :category, Types::CategoryType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :name, String, required: true

    sig { params(id: String, name: String).returns(T::Hash[Symbol, Symbol]) }
    def resolve(id:, name:)
      category = ::Category.find(id.to_i)

      check_and_update(category, name)
    end

    sig { params(category: Category, name: String).returns(T::Hash[Symbol, Symbol]) }
    def check_and_update(category, name)
      unless category.update(name: name)
        raise GraphQL::ExecutionError.new 'Error updating the Category',
                                          extensions: category.errors.to_hash
      end

      { category: category, errors: [] }
    end
  end
end

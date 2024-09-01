# typed: strict

module Resolvers
  class CategoryResolver < BaseResolver
    type Types::CategoryType, null: false
    argument :id, ID

    sig { params(id: String).returns(T.nilable(Category)) }
    def resolve(id:)
      ::Category.by_id(id).entries.first
    end
  end
end

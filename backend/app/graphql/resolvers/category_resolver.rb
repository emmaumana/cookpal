module Resolvers
  class CategoryResolver < BaseResolver
    type Types::CategoryType, null: false
    argument :id, ID

    def resolve(id:)
      ::Category.find_by(id: id)
    end
  end
end

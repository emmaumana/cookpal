module Resolvers
  class CategoriesResolver < BaseResolver
    type [Types::CategoryType], null: false
    argument :page, Int, default_value: 1

    def resolve(page:)
      ::Category.order('created_at DESC').page(page).per_page(50)
    end
  end
end

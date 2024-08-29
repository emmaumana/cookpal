# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :category_update, mutation: Mutations::CategoryUpdate
    field :category_delete, mutation: Mutations::CategoryDelete
    field :category_create, mutation: Mutations::CategoryCreate
  end
end

# typed: strict

module Api
  module V1
    class IngredientPresenter < BasePresenter
      extend T::Sig

      sig { params(source: Ingredient).void }
      def initialize(source:)
        @source = T.let(source, Ingredient)
      end

      sig { returns(Ingredient) }
      attr_reader :source

      sig { override.returns(Serialized) }
      def serialize
        {
          id: source.id,
          title: source.title,
          created_at: source.created_at,
          updated_at: source.updated_at
        }
      end
    end
  end
end

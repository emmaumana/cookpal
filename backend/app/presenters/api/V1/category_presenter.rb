# typed: strict

module Api
  module V1
    class CategoryPresenter < BasePresenter
      extend T::Sig

      sig { params(source: Category).void }
      def initialize(source:)
        @source = T.let(source, Category)
      end

      sig { returns(Category) }
      attr_reader :source

      sig { override.returns(Serialized) }
      def serialize
        {
          id: source.id,
          name: source.name,
          slug: source.slug,
          created_at: source.created_at,
          updated_at: source.updated_at
        }
      end
    end
  end
end

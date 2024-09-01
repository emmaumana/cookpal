# typed: strict

module Api
  module V1
    class RecipePresenter < BasePresenter
      extend T::Sig

      sig { params(source: Recipe).void }
      def initialize(source:)
        @source = T.let(source, Recipe)
      end

      sig { returns(Recipe) }
      attr_reader :source

      sig { override.returns(Serialized) }
      def serialize
        {
          id: source.id,
          title: source.title,
          slug: source.slug,
          total_time: source.total_time,
          rating: source.rating,
          image_url: source.image_url,
          created_at: source.created_at,
          updated_at: source.updated_at
        }
      end
    end
  end
end

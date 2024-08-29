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
          description: source.description,
          pre_time_minutes: source.pre_time_minutes,
          cook_time_minutes: source.cook_time_minutes,
          rating: source.rating,
          author: source.author,
          image_url: source.image_url,
          created_at: source.created_at,
          updated_at: source.updated_at
        }
      end
    end
  end
end

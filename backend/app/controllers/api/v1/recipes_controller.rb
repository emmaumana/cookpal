# typed: strict

module Api
  module V1
    class RecipesController < ApplicationController
      extend T::Sig

      sig { void }
      def index
        collection = Recipe.limit(50)

        return render json: { error: 'No recipes found' }, status: :not_found if collection.empty?

        render json: collection.map { |recipe| RecipePresenter.new(source: recipe).serialize }
      end

      sig { void }
      def show
        recipe = Recipe.find_by(id: show_params.id)

        return render json: { error: 'Recipe not found' }, status: :not_found if recipe.nil?

        render json: RecipePresenter.new(source: recipe).serialize
      end

      sig { returns(ShowParams) }
      def show_params
        TypedParams[ShowParams].new.extract!(params)
      end

      class ShowParams < T::Struct
        const :id, String
      end
    end
  end
end

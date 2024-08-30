# typed: strict

module Api
  module V1
    class IngredientsController < ApplicationController
      extend T::Sig

      sig { void }
      def index
        collection = Ingredient.limit(50)

        return render json: { error: 'No ingredients found' }, status: :not_found if collection.empty?

        render json: collection.map { |ingredient| IngredientPresenter.new(source: ingredient).serialize }
      end

      sig { void }
      def show
      ingredient = Ingredient.find_by(id: show_param_id)

      return render json: { error: 'Recipe not found' }, status: :not_found if ingredient.nil?

      render json: IngredientPresenter.new(source: ingredient).serialize
      end
    end
  end
end

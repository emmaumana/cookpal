# typed: strict

module Api
  module V1
    class IngredientsController < ApplicationController
      extend T::Sig

      sig { void }
      def index
        collection = T.cast(Ingredient.order('created_at DESC').page(current_page).per_page(50),
                            ActiveRecord::Relation)

        return render json: { error: 'No ingredients found' }, status: :not_found if collection.empty?

        render json: collection.map { |ingredient| IngredientPresenter.new(source: ingredient).serialize }
      end

      sig { void }
      def show
      ingredient = Ingredient.find_by(id: show_params.id)

      return render json: { error: 'Recipe not found' }, status: :not_found if ingredient.nil?

      render json: IngredientPresenter.new(source: ingredient).serialize
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

# typed: strict

module Api
  module V1
    class CategoriesController < ApplicationController
      extend T::Sig

      sig { void }
      def index
        collection = Category.limit(50)

        return render json: { error: 'No categories found' }, status: :not_found if collection.empty?

        render json: collection.map { |category| CategoryPresenter.new(source: category).serialize }
      end

      sig { void }
      def show
        category = Category.find_by(id: show_params.id)

        return render json: { error: 'Category not found' }, status: :not_found if category.nil?

        render json: CategoryPresenter.new(source: category).serialize
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

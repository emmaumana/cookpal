require 'rails_helper'

RSpec.describe RecipeIngredient, type: :model do
  subject { described_class.new(recipe: recipe, ingredient: ingredient) }

  let(:recipe) { create(:recipe) }
  let(:ingredient) { create(:ingredient) }

  # associations
  describe 'associations' do
    it do
      should belong_to(:recipe).class_name('Recipe')
      should belong_to(:ingredient).class_name('Ingredient')
    end
  end
end

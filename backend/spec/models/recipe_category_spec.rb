require 'rails_helper'

RSpec.describe RecipeCategory, type: :model do
  subject { described_class.new(recipe: recipe, category: category) }

  let(:recipe) { create(:recipe) }
  let(:category) { create(:category) }

  # associations
  describe 'associations' do
    it do
      should belong_to(:recipe).class_name('Recipe')
      should belong_to(:category).class_name('Category')
    end
  end
end

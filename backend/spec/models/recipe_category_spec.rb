require 'rails_helper'

RSpec.describe RecipeCategory, type: :model do
  subject { described_class.new(recipe: recipe, category: category) }

  let(:recipe) { create(:recipe) }
  let(:category) { create(:category) }

  # associations
  describe 'associations' do
    it do
      expect(subject).to belong_to(:recipe).class_name('Recipe')
      expect(subject).to belong_to(:category).class_name('Category')
    end
  end
end

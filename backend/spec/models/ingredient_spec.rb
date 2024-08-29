require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  subject { described_class.new(title: title) }

  let(:title) { 'Test ingredient' }

  describe 'validations' do
    it { should validate_presence_of(:title) }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    context 'when no title' do
      let(:title) { nil }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid
      end
    end
  end

  describe 'relationships' do
    it do
      should have_many(:recipes)
        .through(:recipe_ingredients)
        .class_name('Recipe')
    end
  end
end

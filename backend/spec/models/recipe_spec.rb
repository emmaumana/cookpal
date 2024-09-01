require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
 described_class.new(title: title,
                     slug: slug,
                     total_time: total_time,
                     rating: rating,
                     image_url: 'https://example.com/image.jpg')
  end

  let(:title) { 'Test Recipe' }
  let(:total_time) { 0 }
  let(:rating) { nil }
  let(:slug) { 'test-recipe' }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'set the slug based on title and id' do
      subject.save!
      expect(subject.slug).to eq('test-recipe')
    end

    context 'when no title' do
      let(:title) { nil }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid
      end
    end

    context 'when title already exists' do
      subject { build(:recipe, title: title) }

      let!(:existing_recipe) { create(:recipe, title: title) }

      it "still valid with unique slug using last record's id" do
        expect(subject).to be_valid
        expect(subject.slug).to eq("test-recipe-#{existing_recipe.id + 1}")
      end
    end

    context 'when we try to set a non unique slug' do
      let(:existing_recipe) { create(:recipe, title: title, slug: slug) }

      before do
        existing_recipe
      end

      it 'sets a new slug before validation' do
        expect(subject).to be_valid
        expect(subject.slug).to eq("#{slug}-#{existing_recipe.id + 1}")
      end
    end

    context 'when over rating' do
      let(:rating) { 6 }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid
        expect(subject.errors.messages.values.flatten.first).to eq(
          'must be less than or equal to 5'
        )
      end
    end

    context 'when no positive rating' do
      let(:rating) { -1 }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid
        expect(subject.errors.messages.values.flatten.first).to eq(
          'must be greater than or equal to 0'
        )
      end
    end

    context 'when no positive preparation time' do
      let(:total_time) { -1 }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid

        messages = subject.errors.messages.values.flatten.uniq
        expect(messages.first).to eq('must be greater than or equal to 0')
      end
    end
  end

  describe 'relationships' do
    it do
      expect(subject).to have_many(:categories)
        .through(:recipe_categories)
        .class_name('Category')
    end

    it do
      expect(subject).to have_many(:ingredients)
        .through(:recipe_ingredients)
        .class_name('Ingredient')
    end
  end
end

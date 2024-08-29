require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
 described_class.new(title: title,
                     pre_time_minutes: pre_time_minutes,
                     cook_time_minutes: cook_time_minutes,
                     rating: rating,
                     image_url: 'https://example.com/image.jpg')
  end

  let(:title) { 'Test Recipe' }
  let(:pre_time_minutes) { 0 }
  let(:cook_time_minutes) { 0 }
  let(:rating) { nil }
  let(:slug) { 'test-recipe' }

  describe 'validations' do
    it { should validate_presence_of(:title) }

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
      let!(:existing_recipe) { create(:recipe, title: title) }

      subject { build(:recipe, title: title) }

      it "still valid with unique slug using last record's id" do
        expect(subject).to be_valid
        expect(subject.slug).to eq("test-recipe-#{existing_recipe.id + 1}")
      end
    end

    context 'when no unique slug' do
      let!(:existing_recipe) { create(:recipe, title: title, slug: slug) }

      subject { build(:recipe, title: title) }

      before do
        allow(subject).to receive(:slug).and_return(slug)
      end

      it 'return slug error' do
        expect(subject).not_to be_valid
        expect(subject.errors.messages.values.flatten.first).to eq('has already been taken')
        expect(subject.errors.messages.keys).to eq([:slug])
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

    context 'when no positive preparation and cook time' do
      let(:pre_time_minutes) { -1 }
      let(:cook_time_minutes) { -1 }

      it 'is not valid without a title' do
        expect(subject).not_to be_valid

        messages = subject.errors.messages.values.flatten.uniq
        expect(messages.size).to eq(1)
        expect(messages.first).to eq('must be greater than or equal to 0')
      end
    end
  end

  describe 'relationships' do
    it do
      should have_many(:categories)
        .through(:recipe_categories)
        .class_name('Category')
    end

    it do
      should have_many(:ingredients)
        .through(:recipe_ingredients)
        .class_name('Ingredient')
    end
  end
end

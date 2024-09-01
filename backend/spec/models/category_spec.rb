require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { described_class.new(name: name) }

  let(:name) { 'Test category' }
  let(:generated_slug) { 'test-category' }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'set the slug based on name and id' do
      subject.save!
      expect(subject.slug).to eq(generated_slug)
    end

    context 'when no name' do
      let(:name) { nil }

      it 'is not valid without a name' do
        expect(subject).not_to be_valid
      end
    end

    context 'when no unique name' do
      let!(:existing_category) { create(:category, name: name, slug: generated_slug) }

      it 'return name and slug error' do
        expect(subject).not_to be_valid
        expect(subject.errors.messages.values.flatten.first).to eq('has already been taken')
        expect(subject.errors.messages.keys).to eq(%i[name slug])
      end
    end
  end

  describe 'relationships' do
    it do
      expect(subject).to have_many(:recipes)
        .through(:recipe_categories)
        .class_name('Recipe')
    end
  end
end

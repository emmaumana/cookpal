# typed: strict

class Recipe < ApplicationRecord
    before_validation :set_slug

    # validations
    validates :title, presence: true
    validates :slug, presence: true, uniqueness: true
    validates :total_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_nil: true

    # relationships
    has_many :recipe_ingredients, class_name: 'RecipeIngredient', dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients, class_name: 'Ingredient'
    has_many :recipe_categories, class_name: 'RecipeCategory', dependent: :destroy
    has_many :categories, through: :recipe_categories, class_name: 'Category'

    # scopes
    scope :by_id, ->(id) { where(id: id) }
    scope :by_slug, ->(slug) { where(slug: slug) }
    scope :by_ingredients_search,
          lambda { |search|
          terms = search.strip.split(',')
          return if terms.empty?

          query = terms.map { 'ingredients.title ILIKE ?' }.join(' OR ')
          placeholders = terms.map { |term| "%#{term}%" }

          # TOOD: Fix this - Sorbet doesn't like this
          where(query, T.unsafe(*placeholders))
          .distinct
          }

    sig { void }
    def set_slug
      return unless title_changed?

      last_record_id = Recipe.last&.id
      return self[:slug] = self[:title].parameterize if last_record_id.nil?

      self[:slug] = "#{self[:title].parameterize}-#{last_record_id + 1}"
    end
end

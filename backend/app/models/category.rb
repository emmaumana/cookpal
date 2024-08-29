# typed: strict

class Category < ApplicationRecord
  before_validation :set_slug

  # validations
  validates :name, uniqueness: { case_sensitive: false }, presence: true
  validates :slug, presence: true, uniqueness: true

  # relationships
  has_many :recipe_categories, class_name: 'RecipeCategory', dependent: :destroy
  has_many :recipes, through: :recipe_categories, class_name: 'Recipe'

  # scopes
  scope :by_id, ->(id) { where(id: id) }
  scope :by_name, ->(name) { where(name: name) }
  scope :by_slug, ->(slug) { where(slug: slug) }

  sig { void }
  def set_slug
    return unless name_changed?

    self[:slug] = self[:name].parameterize
  end
end

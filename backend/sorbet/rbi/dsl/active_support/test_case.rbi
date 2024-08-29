# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveSupport::TestCase`.
# Please instead update this file by running `bin/tapioca dsl ActiveSupport::TestCase`.


class ActiveSupport::TestCase
  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[Category]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(Category) }
  sig do
    params(
      fixture_name: T.any(String, Symbol),
      other_fixtures: T.any(String, Symbol)
    ).returns(T::Array[Category])
  end
  def categories(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[Ingredient]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(Ingredient) }
  sig do
    params(
      fixture_name: T.any(String, Symbol),
      other_fixtures: T.any(String, Symbol)
    ).returns(T::Array[Ingredient])
  end
  def ingredients(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[RecipeCategory]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(RecipeCategory) }
  sig do
    params(
      fixture_name: T.any(String, Symbol),
      other_fixtures: T.any(String, Symbol)
    ).returns(T::Array[RecipeCategory])
  end
  def recipe_categories(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[RecipeIngredient]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(RecipeIngredient) }
  sig do
    params(
      fixture_name: T.any(String, Symbol),
      other_fixtures: T.any(String, Symbol)
    ).returns(T::Array[RecipeIngredient])
  end
  def recipe_ingredients(fixture_name = nil, *other_fixtures); end

  sig { params(fixture_name: NilClass, other_fixtures: NilClass).returns(T::Array[Recipe]) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: NilClass).returns(Recipe) }
  sig { params(fixture_name: T.any(String, Symbol), other_fixtures: T.any(String, Symbol)).returns(T::Array[Recipe]) }
  def recipes(fixture_name = nil, *other_fixtures); end
end

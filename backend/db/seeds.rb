# typed: false

require 'json'
require 'uri'

def recipe_seeds
  jsonfile = File.open 'db/recipes-en-seeds.json'
  recipes_data = T.let(JSON.parse(jsonfile.read, symbolize_names: true), T::Hash[Symbol, T.untyped])
  recipes = T.let(recipes_data[:recipes], T::Array[T::Hash[Symbol, T.untyped]])
  total_recipes = recipes.count

  recipes.each_with_index do |recipe, index|
      print "\rCreating recipes ••• #{index * 100 / total_recipes}%"

      url = URI.decode_www_form_component(recipe[:image]).rpartition('image?url=').last

      new_recipe = Recipe.create!(
        title: recipe[:title],
        pre_time_minutes: recipe[:prep_time],
        cook_time_minutes: recipe[:cook_time],
        rating: recipe[:ratings],
        author: recipe[:author],
        image_url: url
      )

      if recipe[:category].present?
        category = Category.find_or_create_by!(name: recipe[:category])
        new_recipe.categories << category
      end

      recipe[:ingredients].each do |ingredient|
        new_ingredient = Ingredient.find_or_create_by!(title: ingredient)
        new_recipe.ingredients << new_ingredient
      end
  end

  print "\rRecipes created successfuly!💯\n"
end

# ? ======= Comment to disable seed =======
# Main db seed
recipe_seeds

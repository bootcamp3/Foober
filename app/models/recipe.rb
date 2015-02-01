class Array
  def subset?(i)
    (self - i).length == 0
  end
end

class Recipe < ActiveRecord::Base
  has_many :compositions
  has_many :ingredients, through: :compositions

  def self.find_recipes(ingredients)
    ingredients_name = Ingredient.find(ingredients).map(&:name)
    match_recipe = []
    Recipe.all.each do |recipe|
      recipe_ingredient = recipe.ingredient.split(",")
      match_recipe << recipe if recipe_ingredient.subset?(ingredients_name)
    end

    match_recipe.sample(3)
  end
end


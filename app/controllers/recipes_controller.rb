class RecipesController < ApplicationController
  def search
    ingredients = params[:recipe][:ingredient_ids]
    recipe_match = Recipe.find_recipes(ingredients)
    redirect_to main_menu_path(recipes: recipe_match)
  end


  def result
    recipe = Recipe.find(params[:recipe_id])
    order = current_user.orders.last
    order.recipe = recipe
    order.menu_decide
    order.save!
    redirect_to main_success_path
  end
end

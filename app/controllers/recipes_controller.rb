class RecipesController < ApplicationController
  def search
    @search = params[:recipe][:ingredient_ids]

    redirect_to main_menu_path
  end


  def result
    recipe = Recipe.find(params[:recipe_id])
    order = current_user.orders.last
    order.recipe = recipe
    order.menu_decide
    order.save!
    redirect_to main_success_path
  end

  def like

  end

  def dislike

  end
end
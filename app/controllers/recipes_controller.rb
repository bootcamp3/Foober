class RecipesController < ApplicationController
  def search
    @search = params[:recipe][:ingredient_ids]

  end


  def result
  end

  def like

  end

  def dislike

  end
end
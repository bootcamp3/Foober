class MainController < ApplicationController

  before_filter :authentication?, except: [:login, :index]

  def login
    session[:name] = User.last.name
    redirect_to :root
  end

  def signout
    reset_session
    redirect_to :root
  end

  def index
  end

  def branch
  end

  def ingredient
    @recipe = Recipe.new
  end

  def menu
    raw_recipes = Recipe.where.not(id: nil)
    @recipes = raw_recipes.find(raw_recipes.ids.sample(3))
  end

  def success
  end

  def feedback
  end

  def stars
    render :text => params.inspect
  end
end

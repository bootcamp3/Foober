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
    if params[:recipes]
      @recipes = Recipe.find(params[:recipes])
    else
      flash[:no_recipe] = "找不到食譜:("
      redirect_to main_ingredient_path
    end
  end

  def success
  end

  def feedback
  end

  def stars
    render :text => params.inspect
  end
end

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
    @recipes = Recipe.find(params[:recipes])
  end

  def success
  end

  def feedback
  end

  def stars
    render :text => params.inspect
  end
end

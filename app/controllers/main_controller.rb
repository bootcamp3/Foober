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

  end

  def success

  end

  def feedback

  end

  private

  def authentication?
    if current_user 
      true
    else
      redirect_to :root
    end
  end
end

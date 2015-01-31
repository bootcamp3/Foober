class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    current_user = User.find_by_name(session[:name]) if session[:name]
  end

  protected

  def authentication?
    if current_user 
      true
    else
      redirect_to :root
    end
  end
end

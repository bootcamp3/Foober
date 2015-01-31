module ApplicationHelper
  def member 
    session[:name] ? "Hi, #{session[:name]}" : "Log In"
  end
end

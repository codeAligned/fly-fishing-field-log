class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id])
    # if @current_user
    #   return @current_user
    # else
    #   return @current_user = User.find(session[:user_id])
    # end
  end

  def login(user)
    session[:user_id] = user.id
  end
  #checks if current user is currently logged in. If not, goes to session id and associates it with that user.
end

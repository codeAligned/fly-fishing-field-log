class SessionsController < ApplicationController

  def create
    user = User.find_by(name: session_params[:name])
    if user && user.authenticate(session_params["password"])
      login(user)
      redirect_to user_path(user)
    else
      flash[:message] = "Incorrect Password, please try again!"
      redirect_to home_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end

  private

  def session_params
    params.require(:user).permit(:name, :password)
  end
end

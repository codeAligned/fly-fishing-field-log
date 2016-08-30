class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @homestate = State.find_by(id: @user.state_id).name

  end

  def create
    @user = User.create(user_params)
    @user.state_id = State.find_by(id: params[:user][:state_id]).id
    @user.save
    redirect_to new_session_path
    flash[:message] = "Thanks for signing up, please log in!"

  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.age = params[:user][:age]
    @user.state_id = State.find_by(id: params[:user][:state_id]).id
    @homestate = State.find_by(id: @user.state_id).name
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :password, :password_confirmation)
  end

end

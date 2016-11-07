class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = User.find_by(id: session[:user_id]).id
    @post.save

    redirect_to userposts_path(@post)
  end

  def edit
     @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path(@post)
  end

  def userposts
    #users/id/posts
    #find the user and their id
    @posts = Post.where(user_id: current_user.id)



  end

  private

  def post_params
    params.require(:post).permit(:name, :text, :user_id)
  end

end

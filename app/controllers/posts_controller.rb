class PostsController < ApplicationController

  def index
   @posts = Post.includes(:user).rank(:row_order)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to user_path(current_user)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user)
  end

  def sort
    post = Post.find(params[:post_id])
    post.update(post_params)
    render body: nil 
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :priority, :row_order_position).merge(user_id: current_user.id)
  end

end

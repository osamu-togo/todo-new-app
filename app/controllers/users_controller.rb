class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.rank(:row_order)
  end

  def sort
    post = Post.find(params[:id])
    post.update(post_params)
    render body: nil 
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :priority, :row_order_position).merge(user_id: current_user.id)
  end


end

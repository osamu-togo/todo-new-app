class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.rank(:row_order)
  end

end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_images = @user.books
  end

  def edit
  end
end

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_images = @user.books
    @book = Book.new
  end

  def edit
  end
end

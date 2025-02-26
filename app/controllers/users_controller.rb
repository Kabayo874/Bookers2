class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_images = @user.books
    @book = Book.new
    @books = Book.all
  end

  # def create
  #   @book = Book.new(book_params)
  #   @book.user_id = current_user.id
  #   @book.save
  #   redirect_to user_path
  # end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

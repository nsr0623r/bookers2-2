class UsersController < ApplicationController
  def index
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end
  
  def create
    # @book = Book.new(book_params)
    # if @book.save
    #   redirect_to books_path
    # else
    #   render "index"
    # end
  end
  
  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end

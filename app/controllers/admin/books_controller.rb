class Admin::BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params
    if @book.save
      flash[:success] = "Create a new book successfully!"
      redirect_to book_path(@book.id)
    else
      flash[:danger] = "Invalid information of book!"
      render "new"
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :category_id, 
    	:number_pages, images_attributes: [:description, :_destroy])
  end
end

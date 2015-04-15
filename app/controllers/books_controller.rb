class BooksController < ApplicationController
  def show
    @book = Book.find params[:id]
    @reviews = @book.reviews
    @new_review = @book.reviews.new
  end
end

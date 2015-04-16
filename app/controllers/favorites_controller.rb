class FavoritesController < ApplicationController
  def create
    @book = Book.find params[:book_id]
    current_user.make_favorite @book 
    respond_to do |format|
      format.html {redirect_to @book}
      format.js
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id]).destroy
    @book = @favorite.book
    respond_to do |format|
      format.html {redirect_to @book}
      format.js
    end
  end
end
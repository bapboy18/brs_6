require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
  before :each do
    @book = FactoryGirl.create :book
    @user = FactoryGirl.create :user
    @favorite = FactoryGirl.create(:favorite, 
      book_id: @book.id, user_id: @user.id)
  end

  it "create favorite" do 
    sign_in @user
    post :create, book_id: @book.id
    expect(response).to redirect_to @book
  end

  it "destroy favorite" do
    sign_in @user
    @book2 = @favorite.book
    delete :destroy, id: @favorite.id
    expect(response).to redirect_to book_path(@book2)
  end
end
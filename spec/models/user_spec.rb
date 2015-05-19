require 'rails_helper'
require 'devise'

RSpec.describe User, type: :model do
    
  context "has_favorite?" do
    it do
      user = FactoryGirl.create(:user)
      book = FactoryGirl.create(:book)
      FactoryGirl.create(:favorite, user_id: user.id, book_id: book.id)
      expect(user.has_favorite? book).to eq true
    end
  end

  context "make_favorite" do
    it do
      user = FactoryGirl.create(:user)
      book = FactoryGirl.create(:book)
      expect{user.make_favorite book}.to change(Favorite,:count).by(1)
    end
  end
end

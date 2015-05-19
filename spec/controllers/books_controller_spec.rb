require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  before :each do
    @book = FactoryGirl.create :book
  end

  it "render show" do
    get :show, id: @book.id
    expect(response).to  render_template "show"
  end

end

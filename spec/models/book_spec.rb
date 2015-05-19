require 'rails_helper'

RSpec.describe Book, type: :model do

  it {is_expected.to have_many(:images).dependent(:destroy)}
  it {is_expected.to have_many(:reviews).dependent(:destroy)}
  it {is_expected.to have_many :favorites}
  it {is_expected.to belong_to :category}
  
  it {is_expected.to validate_presence_of(:title)}
  it {is_expected.to validate_presence_of(:author)}
  it {is_expected.to validate_presence_of(:category_id)}
  it {is_expected.to validate_presence_of(:number_pages)}
  it {is_expected.to validate_numericality_of(:number_pages)}

  it {is_expected.to accept_nested_attributes_for(:images).allow_destroy true}
end

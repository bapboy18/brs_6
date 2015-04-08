class Book < ActiveRecord::Base
  has_many :images, dependent: :destroy
  validates :title, :author, :category_id, presence: true
  validates :number_pages, presence: true, numericality: true
  
  accepts_nested_attributes_for :images, allow_destroy: true 
end
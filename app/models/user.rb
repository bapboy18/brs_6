class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites

  def has_favorite? book
    favorites.map(&:book).include? book
  end

  def make_favorite book
    favorites.create book_id: book.id
  end
end
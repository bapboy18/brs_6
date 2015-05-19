FactoryGirl.define do
  factory :book do
    author "Miechael"
    title "title 3"
    category_id "1"
    number_pages "500"
  end

  factory :book_with_reviews do
    after :create do |book|
      create :review, book: book
    end
  end
end
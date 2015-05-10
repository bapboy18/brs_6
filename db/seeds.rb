
10.times do |n|
	category_id = rand(10) + 1
	title = Faker::Name.name
	author = Faker::Name.name
	number_pages = 100 + rand(1000)
	rate_mark_total = 500 + rand(2000)
	rate_number = rate_mark_total/4
	Book.create!(category_id: category_id, title: title, author: author,
							 number_pages: number_pages, rate_mark_total:rate_mark_total,
							 rate_number: rate_number)
end
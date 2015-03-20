class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :category_id
      t.string :title
      t.string :author
      t.integer :number_pages
      t.integer :rate_mark_total
      t.integer :rate_number

      t.timestamps null: false
    end
  end
end

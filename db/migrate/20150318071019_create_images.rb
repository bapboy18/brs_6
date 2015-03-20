class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :book_id
      t.string :description

      t.timestamps null: false
    end
  end
end

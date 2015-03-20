class CreateBookStates < ActiveRecord::Migration
  def change
    create_table :book_states do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :state

      t.timestamps null: false
    end
  end
end

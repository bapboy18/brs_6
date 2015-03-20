class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :name
      t.string :link
      t.string :state

      t.timestamps null: false
    end
  end
end

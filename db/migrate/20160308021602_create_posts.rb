class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :upvotes
      t.timestamps null: false
      t.string :photo_id
      t.string :user_name
    end
  end
end

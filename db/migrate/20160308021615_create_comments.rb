class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.string :user_name
      t.timestamps null: false
      t.integer :comment_upvotes
    end
  end
end

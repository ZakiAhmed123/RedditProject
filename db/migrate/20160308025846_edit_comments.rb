class EditComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comment_upvotes, :integer
    add_column :comments, :comment_upvotes, :integer, default: 0
  end
end

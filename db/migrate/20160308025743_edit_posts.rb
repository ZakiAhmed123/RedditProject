class EditPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :upvotes, :integer
    add_column :posts, :upvotes,:integer, default:0
  end
end

class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :text, :string
    add_column :posts, :comments_counter, :decimal
    add_column :posts, :likes_counter, :decimal
  end
end

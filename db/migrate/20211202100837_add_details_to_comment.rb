class AddDetailsToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :text, :string
  end
end

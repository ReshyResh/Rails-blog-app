class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  # A method that returns the 3 most recent posts for a given user.

  def show_posts()
    posts.order(created_at: :asc).limit(3)
  end
end

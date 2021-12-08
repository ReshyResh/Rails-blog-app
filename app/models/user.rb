class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :id, uniqueness: true
  validates :name, presence: true
  validates :photo, presence: true
  validates :bio, presence: true
  validates :posts_counter, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # A method that returns the 3 most recent posts for a given user.

  def show_posts()
    posts.order(created_at: :asc).limit(3)
  end
end

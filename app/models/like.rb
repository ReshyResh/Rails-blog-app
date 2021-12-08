class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :id, uniqueness: true
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :post_id, presence: true, numericality: { only_integer: true }

  # A method that updates the likes counter for a post.

  def update_likes(num, post_id)
    Post.find_by(id: post_id).update(likes_counter: num)
  end
end

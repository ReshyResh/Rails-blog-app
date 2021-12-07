class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # A method that updates the posts counter for a user.

  def update_counter(num, user_id)
    User.find_by(id: user_id).update(posts_counter: num)
  end

  # A method which returns the 5 most recent comments for a given post.

  def recent_comments()
    comments.most_recent
  end
end

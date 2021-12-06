class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # A method that updates the comments counter for a post.

  def update_comments(num, post_id)
    Post.find_by(id: post_id).update(comments_counter: num)
  end

  def get_author_name(user_id)
    User.find_by(id: user_id).name
  end
end

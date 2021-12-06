class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # A method that updates the comments counter for a post.

  def update_comments(num, post_id)
    Post.find_by(id: post_id).update(comments_counter: num)
  end
end

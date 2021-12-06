class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    
    # A method that updates the comments counter for a post.

    def update_comments(n,post_id)
        Post.find_by(id: post_id).update(comments_counter: n)
    end
end
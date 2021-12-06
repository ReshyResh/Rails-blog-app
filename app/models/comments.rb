class Comments < ApplicationRecord
    # A method that updates the comments counter for a post.

    def update_comments(n,post_id)
        Posts.find_by(id: post_id).update(comments_counter: n)
    end
end
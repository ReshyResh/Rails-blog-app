class Likes < ApplicationRecord
    # A method that updates the likes counter for a post.

    def update_likes(n,post_id)
        Posts.find_by(id: post_id).update(likes_counter: n)
    end
end
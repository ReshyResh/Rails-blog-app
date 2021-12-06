class Likes < ApplicationRecord
    # A method that updates the likes counter for a post.

    def update_likes(n,post_id)
        post = Posts.find_by(id: post_id)
        post.update(likes_counter: n)
    end
end
class Like < ApplicationRecord
    # A method that updates the likes counter for a post.

    def update_likes(n)
       posts.update(likes_counter: n)
    end
end
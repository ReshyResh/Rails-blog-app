class Like < ApplicationRecord
    def update_likes(n)
        post.update(likes_counter: n)
    end
end
class Posts < ApplicationRecord
    # A method that updates the posts counter for a user.

    def update_counter(n,user_id)
        user = Users.find_by(id: user_id)
        user.update(posts_counter: n)
    end

    # A method which returns the 5 most recent comments for a given post.

    def recent_comments(post_id)
        comments.where('post_id = ?', post_id).order(created_at: :asc).limit(5)
    end
end
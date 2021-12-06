class Users < ApplicationRecord
    # A method that returns the 3 most recent posts for a given user.

    def show_posts(id)
        posts.where('user_id = ?', id).order(created_at: :asc).limit(3)
    end
end
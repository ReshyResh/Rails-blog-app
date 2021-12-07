class PostsController < ApplicationController
  def index
    return unless User.exists?(id: params['user_id'])

    @user = User.find_by(id: params['user_id'])
    render '../views/layouts/partials/_userposts'
  end

  def show
    return unless Post.exists?(id: params['id'])

    @post = Post.find_by(id: params['id'])
    render '../views/layouts/partials/_userpostdetails'
  end
end

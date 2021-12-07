class LikesController < ApplicationController
  def create
    post = Post.find_by(id: params['post_id'])
    flag = false
    post.likes.each do |like|
      flag = true if like.user_id == current_user.id
    end
    return unless flag == false

    newlike = Like.new(created_at: Time.now, updated_at: Time.now, user_id: current_user.id,
                       post_id: params['post_id'])
    respond_to do |format|
      format.html do
        if newlike.save
          flash[:success] = 'Post liked successfully'
          redirect_to user_posts_path
        else
          flash.now[:error] = 'Error: Like could not be created'
        end
      end
    end
  end
end

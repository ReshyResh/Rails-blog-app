class PostsController < ApplicationController
  def index
    return unless User.exists?(id: params['user_id'])

    @user = User.find_by(id: params['user_id'])
    render '../views/layouts/partials/_userposts'
  end

  def show
    return unless Post.exists?(id: params['id'])
    @post = Post.find_by(id: params['id'])
    if (@post.user_id == params['user_id'].to_i)
      render '../views/layouts/partials/_userpostdetails'
    else
      render '../views/layouts/partials/_wrongid'
    end
  end

  def new
    @newpost = Post.new
    respond_to do |format|
      format.html { render :new }
    end
  end
  
  def create
    # newpost = Post.new(Time.now, Time.now, 1, title, text, 0, 0)
    newpost = Post.new(params.require(:post).permit(:title, :text).merge(created_at: Time.now, updated_at: Time.now,user_id: 2, comments_counter: 0, likes_counter: 0))
    respond_to do |format|
      format.html do
        if newpost.save
          flash[:success] = "Post created successfully"
          redirect_to user_posts_path
        else 
          flash.now[:error] = "Error: Post could not be created"
          render :new, locals: { newpost: newpost }
        end
      end
    end
  end
end

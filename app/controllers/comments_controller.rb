class CommentsController < ApplicationController
  def new
      @newcomment = Comment.new
      respond_to do |format|
        format.html { render :new }
      end
  end
      
  def create
    newcomment = Comment.new(params.require(:comment).permit(:text).merge(created_at: Time.now, updated_at: Time.now,user_id: current_user.id, post_id: params["post_id"]))
      respond_to do |format|
      format.html do
          if newcomment.save
            flash[:success] = "Comment created successfully"
            redirect_to user_posts_path
          else 
            flash.now[:error] = "Error: Post could not be created"
            render :new, locals: { newcomment: newcomment }
          end
        end
      end
  end
end
  
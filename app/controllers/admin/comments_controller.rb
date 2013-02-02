class Admin::CommentsController < Admin::ApplicationController
  inherit_resources
  
  def index
    @comments = Comment.most_recent.all
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      respond_to do |format|
        format.html { redirect_to admin_comments_url, notice: 'This comment has been approved.' }
        format.js
      end
    else
      flash[:error] = 'Please try again.'
      redirect_to admin_comments_url
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to admin_comments_url, notice: 'This comment has been destroyed.' }
      format.js
    end
  end
  
end
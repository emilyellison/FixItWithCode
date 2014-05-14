class CommentsController < ApplicationController
  
  before_filter :fetch_post
  
  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save_with_captcha
      NotificationMailer.notify_about_comment(@comment).deliver
      respond_to do |format|
        format.html { redirect_to @post, notice: 'Your comment has been submitted.' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @post, notice: 'Your comment could not be submitted. Please try again.' }
        format.js
      end
    end
  end
  
  private
    
    def fetch_post
      @post = Post.find(params[:id])
    end
  
end
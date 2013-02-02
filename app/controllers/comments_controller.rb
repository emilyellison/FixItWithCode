class CommentsController < ApplicationController
  
  before_filter :fetch_post
  
  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @post, notice: 'Your comment has been submitted.' }
        format.js
      end
    else
      flash[:error] = 'Please try again.'
      redirect_to @post
    end
  end
  
  private
    
    def fetch_post
      @post = Post.find(params[:id])
    end
  
end
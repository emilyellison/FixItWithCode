class PostsController < ApplicationController
  
  def index
    @posts = Post.most_recent.approved.page(params[:page]).per(3)
  end
  
  def show
    @post = Post.approved.find(params[:id])
    @comment = Comment.new
    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end
  end
  
  def feed
    @posts = Post.most_recent.approved
    @title = "Fix It With Code"
    @updated = @posts.first.updated_at unless @posts.empty?
    respond_to do |format|
      format.atom { render :layout => false }
      format.rss { redirect_to posts_feed_path(:format => :atom), :status => :moved_permanently }
    end
  end
  
end
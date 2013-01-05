class PostsController < ApplicationController
  
  def index
    @posts = Post.most_recent.approved.page(params[:page]).per(3)
  end
  
  def show
    @post = Post.approved.find(params[:id])
  end
  
end
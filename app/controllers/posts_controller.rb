class PostsController < ApplicationController
  
  def index
    @posts = Post.limit(2)
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
end
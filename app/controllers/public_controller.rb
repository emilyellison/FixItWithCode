class PublicController < ApplicationController
  
  def index
    @administrators = Administrator.all
    @posts = Post.most_recent.limit(2)
  end
  
end
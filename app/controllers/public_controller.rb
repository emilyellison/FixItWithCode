class PublicController < ApplicationController
  
  def index
    @administrators = Administrator.all
  end
  
end
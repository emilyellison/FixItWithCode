class AdministratorsController < ApplicationController
  
  def index
    
  end
  
  def show
    @administrator = Administrator.find_by_first_name(params[:first_name].capitalize)
  end
  
end
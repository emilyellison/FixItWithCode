require 'redcarpet/compat'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_administrators
  
  def find_administrators
    @administrators = Administrator.all
  end
  
end

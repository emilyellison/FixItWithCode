require 'redcarpet/compat'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_administrators
  
  def current_admin
    @current_admin ||= Administrator.find(session[:admin_id]) unless session[:admin_id].nil?
  end
  helper_method :current_admin
  
  def find_administrators
    @administrators = Administrator.all
  end
  
end

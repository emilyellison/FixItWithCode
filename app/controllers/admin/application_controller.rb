class Admin::ApplicationController < ApplicationController

  layout 'application'

  before_filter :require_admin!  

  private
  
    def require_admin!
      reset_session unless session[:last_page_load].present? && session[:last_page_load] > 1.day.ago
      session[:last_page_load] = Time.now
      redirect_to admin_login_url, alert: "Please login to proceed." if current_admin.nil?
    end

end
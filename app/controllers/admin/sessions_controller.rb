class Admin::SessionsController < Admin::ApplicationController
  
  skip_before_filter :require_admin!
  
  def new
    
  end
  
  def create
    @admin = Administrator.find_by_email(params[:session][:email])
    if @admin && @admin.authenticate(params[:session][:password])
      session[:admin_id] = @admin.id
      flash[:notice] = 'Logged in.'
      redirect_to admin_root_url
    else
      render :new
    end
  end
  
  def destroy
    session[:admin_id] = nil
    flash[:notice] = "Logged out."
    redirect_to root_url
  end
  
end
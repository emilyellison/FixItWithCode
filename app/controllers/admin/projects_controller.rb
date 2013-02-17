class Admin::ProjectsController < Admin::ApplicationController
  
  def index
    @projects = Project.all
  end
  
  def new
    @project = @current_admin.projects.build
  end
  
  def create
    @project = @current_admin.projects.build(params[:project])
    if @project.save
      flash[:success] = 'Project created.'
      redirect_to admin_project_path(@project)
    else
      render :new
    end
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = 'Project updated.'
      redirect_to admin_project_path(@project)
    else
      render :edit
    end
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = 'Project destroyed.'
    redirect_to root_path
  end
  
end
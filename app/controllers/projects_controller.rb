class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    gon.projects = @projects
  end
  
end
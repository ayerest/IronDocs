class ProjectsController < ApplicationController
    before_action :grab_project, only: [:show]
    def index
        @projects = Project.all
    end

    def show
        #@posts = @project.posts
    end

    def new
        @project = Project.new
    end

    def create 
        @project = Project.new(project_params)
        @project.users << User.find(params[:creator_id])
        byebug
        if @project.save
            
            redirect_to project_path(@project)
        else
            render :new
        end
    end

    private

    def grab_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :description)
    end
end
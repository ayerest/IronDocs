class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :check_for_user_permission, except: [:show, :new, :create]
    before_action :check_if_user_can_make_post, only: [:new, :create]
    # def index
    #     @posts = Post.all
    # end

    def show
        if !@post.visitor_has_view_rights?(session[:user_id])
            if logged_in?
                flash[:alert_message] = "You don't have access to this post"
                redirect_to user_path(session[:user_id])
            else
                flash[:alert_message] = "Log in to view this post"
                redirect_to login_path
            end
        end
        @write_privilege = write_privilege?
        @last_project = Project.find(session[:project_id])

        renderer = Redcarpet::Render::HTML
        @markdown = Redcarpet::Markdown.new(renderer, extensions = {})

        
    end

    def new
        @post = Post.new
        @post.title = "New Post"
        @post.public_access = true
<<<<<<< HEAD
        @user = set_user
        @projects = @user.projects
=======
        @change_access_privilege = true
>>>>>>> 23d7de7ce34e5ca824f99400e68b345b4d773e4f
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = session[:user_id]
        @post.projects << Project.find(session[:project_id])
        @post.save
        redirect_to post_path(@post)
    end

    def edit
        @user = set_user
        @projects = @user.projects
        @change_access_privilege = (@post.user_id == session[:user_id])
    end

    def update
        @post.update(post_params)
        @post.projects << Project.find(params[:post][:project_ids])
        redirect_to @post
    end

    def destroy
        @post.delete
        redirect_to project_path(session[:project_id])
    end

    private


    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:content, :title, :user_id, :urgency_level, :public_access)
    end

    def check_for_user_permission
        if logged_in?
            set_post
            if !@post.user_has_access_rights?(session[:user_id])
                flash[:alert_message] = "You don't have permission to edit this post"
                redirect_to user_path(session[:user_id])
            end
        else
            flash[:alert_message] = "Log in to edit this post"
            redirect_to login_path
        end
    end

    def check_if_user_can_make_post
        if logged_in?
            user = User.find(session[:user_id])
            project = Project.find(session[:project_id])
            if !project.users.include?(user)
                flash[:alert_message] = "You don't have permission to make a post here"
                redirect_to user_path(user)
            end
        else

            flash[:alert_message] = "Log in to make a post"
            redirect_to login_path
        end
    end

    def write_privilege?
        if logged_in?
            if @post.public_access
                user = User.find(session[:user_id])
                project = Project.find(session[:project_id])
                if project.users.include?(user)
                    return true
                end
            else
                return @post.user_id == session[:user_id]
            end
        end
        return false
    end
end

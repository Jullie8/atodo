class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
        # byebug
        @current_user_todos = current_user.todos
    end

    def todo
        @todo = Todo.find(params[:id])
    end
    def new
        @user = User.new
        @usertodo = Usertodo.new
        @todo = Todo.new
    end

    def create
        @user = User.new(user_params)
       
        if @user.valid?
            @user.save
            log_in! @user
            flash[:success] = "Welcome to the A Todo App!"
            redirect_to @user
        else 
            render :new
        end
    end

    def edit 
        @current_user_todos = current_user.todos
    end

    def update 
    end 

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end

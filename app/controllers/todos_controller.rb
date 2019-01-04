class TodosController < ApplicationController
    def index
        @todos = current_user.todos
    end

    def new
        @todo = current_user.todos.new
    end

    def show
        @todo = Todo.find(params[:id])
    end

    def create
        @todo = current_user.todos.create(todo_params)
        redirect_to user_path current_user   
    end

    def edit 
        @todo = current_user.todos.find(params[:id])
    end

    def update
        @todo = current_user.todos.find(params[:id])
        @todo.update(todo_params)
        redirect_to user_path current_user   
    end

    def destroy 
        @todo = current_user.todos.find(params[:id])
        @todo.destroy
        redirect_to user_path current_user
    end
    private 

    def todo_params
        params.require(:todo).permit(:title)
    end

end

class TodosController < ApplicationController
    def index
        @todos = current_user.todos
    end

    def new
        @todo = current_user.todos.new
    end

    def create
        @todo = current_user.todos.create(todo_params)
        redirect_to user_path current_user
        
    end

    private 

    def todo_params
        params.require(:todo).permit(:title)
    end

end

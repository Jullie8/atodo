class TasksController < ApplicationController

def create
    @task = Task.new(task_params)
    if @task.valid?
        @task.save
        redirect_to @task.todo
    else 
        render :new
    end
end 

def edit 
    @task = Task.find(params[:id])
end

def update
       @task = Task.find(params[:id])
       @task.update(task_params)
        redirect_to @task.todo
end


def destroy 
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to @task.todo
end

private 

def task_params
    params.require(:task).permit(:description, :todo_id)
end 

end

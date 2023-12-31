class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    
    # これ何？
    def new
        @task = Task.new
    end

    def create
        @task = Task.create(task_params)
        redirect_to tasks_path
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to tasks_path
    end

    def destory
        @task = Task.find(params[:id])
        @task.destory
        redirect_to tasks_path
    end

    private
        def task_params
            params.require(:task).permit(:title)
        end
end

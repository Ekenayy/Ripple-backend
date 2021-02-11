class TasksController < ApplicationController

    def create
        task = Task.create(task_params)

        if task.valid?
            render json: task
        else 
            render json: {errors: task.errors.full_messages }
        end 

    end 

    private 
        def task_params
            params.permit(:description)
        end 
end

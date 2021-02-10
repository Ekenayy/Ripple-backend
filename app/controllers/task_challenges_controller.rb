class TaskChallengesController < ApplicationController

    def create

        task_challenge = TaskChallenge.create(tc_params)

        if task_challenge
            render json: task_challenge
        else 
            render json: {errors: task_challenge.errors.full_messages }
        end 

    end 

    private

        def tc_params
            params.permit(:challenge_id, :task_id)
        end 
end

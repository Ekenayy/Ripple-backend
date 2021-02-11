class UserTaskChallengesController < ApplicationController

    def create
        user_task_challenge = UserTaskChallenge.create(utc_params)

        if user_task_challenge.valid?
            render json: user_task_challenge
        else 
            render json: {errors: user_task_challenge.errors.full_messages }
        end 
        
    end

    def update
        user_task_challenge = UserTaskChallenge.find_by(id: params[:id])

        if user_task_challenge
            user_task_challenge.update(utc_params)
            
            render json: user_task_challenge
        else 
            render json: {errors: user_task_challenge.errors.full_messages }
        end 

    end 

    private

    def utc_params
        params.permit(:description, :user_challenge_id, :completed)
    end 
    
end

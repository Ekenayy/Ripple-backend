class UserChallengesController < ApplicationController

    def create
        new_user_challenge = UserChallenge.create(uc_params)

        if new_user_challenge.valid?
            render json: new_user_challenge
        else 
            render json: {errors: new_user_challenge.errors.full_messages }
        end 

    end 

    def my_user_challenges

        user_challenges = UserChallenge.all.where(user_id: (params[:user_id]))

        if user_challenges
            render json: user_challenges
        else 
            render json: {errors: user_challenges.errors.full_messages }
        end 

    end 


    def update

        user_challenge = UserChallenge.find_by(id: params[:id])

        if user_challenge
            user_challenge.update(completed: params[:completed])
            
            render json: user_challenge
        else 
            render json: {errors: user_challenge.errors.full_messages }
        end 
    end 

    private

    def uc_params
        params.permit(:user_id, :challenge_id, :completed)
    end 

end

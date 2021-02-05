class UserChallengesController < ApplicationController

    def create
        new_user_challenge = UserChallenge.create(uc_params)

        if new_user_challenge
            render json: new_user_challenge
        else 
            render json: {errors: new_user_challenge.errors.full_messages }
        end 

    end 

    private
    def uc_params
        params.permit(:user_id, :challenge_id, :completed)
    end 

end

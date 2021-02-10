class ChallengesController < ApplicationController

    def index
        challenges = Challenge.all
        
        render json: challenges
    end 

    def show
        challenge = Challenge.all.find_by(id: params[:id])

        render json: challenge
    end 

    def create
        challenge = Challenge.create(challenge_params)

        if challenge
            render json: challenge
        else 
            render json: {errors: challenge.errors.full_messages }
        end 

    end 


    private

        def challenge_params
            params.permit(:name, :description, :genre, :video_url, :photo_url, :user_id)
        end 
    
end

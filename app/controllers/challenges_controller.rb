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

        if challenge.valid?
            render json: challenge
        else 
            render json: {errors: challenge.errors.full_messages }
        end 

    end 


    def created_challenges

        challenge = Challenge.all.where(user_id: (params[:user_id]))

        if challenge
            render json: challenge
        else 
            render json: {errors: challenge.errors.full_messages }
        end 
        
    end 


    def destroy
        challenge = Challenge.all.find_by(id: params[:id])

        if challenge
            challenge.destroy

            render json: {success: "Sucessfully deleted"}
        else 
            render json: {errors: 'Review not found and thus not deleted' }
        end 

    end 


    private

        def challenge_params
            params.permit(:name, :description, :genre, :video_url, :photo_url, :user_id)
        end 
    
end

class ChallengesController < ApplicationController

    def index
        challenges = Challenge.all
        
        render json: challenges
    end 

    def show
        challenge = Challenge.all.find_by(id: params[:id])

        render json: challenge
    end 
    
end

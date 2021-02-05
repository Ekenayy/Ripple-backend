class UsersController < ApplicationController

    def show 
        user = User.last

        render json: user
    end 

    def fake 
        user = User.last
        
        render json: user 
    end 

end

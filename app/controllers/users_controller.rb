class UsersController < ApplicationController

    def show 
        user = User.find_by(id: params[:id])

        render json: user
    end 


    def fake 
        user = User.all.last
        
        render json: user 
    end 

    def create 
        user = User.create(user_params)


        if user            
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end 

    end 

    def login 
        user = User.all.find_by(email: params[:email])

        if user
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end 
        
    end 

    private

    # "name"
    # t.string "email"
    # t.string "bio"
    # t.string "picture"

    def user_params
        params.permit(:name, :email, :picture, :bio)
    end 

end

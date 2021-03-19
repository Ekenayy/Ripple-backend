class UsersController < ApplicationController
    before_action :authenticate, only: [:token_show]

    def token_show 

        # @current_user.update(email: params[:email], bio: params[:bio])
        render json: @current_user  

        # user = AuthorizeRequest.new(request.headers).user
        
        # if user
        #     user.update(avatar: params[:avatar], bio: params[:bio])
        #     render json: user
        # else
        #     render json: { error: "Unauthorized" }, status: :unauthorized
        # end
        # user = User.find_by(id: params[:id])

        # render json: user
    end 

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


        if user.valid?            
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end 

    end 

    def update 
        user = User.all.find_by(id: params[:id])
        user.update(user_params)

        if user.valid?            
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
            render json: {errors: "The email or password you provided doesn't match our records"}
        end 
        
    end 

    private

    def user_params
        params.permit(:name, :email, :password, :picture, :bio)
    end 

end

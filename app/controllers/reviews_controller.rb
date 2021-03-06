class ReviewsController < ApplicationController

    def create
        new_review = Review.create(reivew_params)

        if new_review.valid?
            render json: new_review
        else 
            render json: {errors: new_review.errors.full_messages }
        end 

    end 


    def challenge_reviews
        reviews = Review.all.where(challenge_id: params[:challenge_id])

        if reviews
            render json: reviews
        else 
            render json: {errors: reviews.errors.full_messages}
        end 

    end

    def destroy
        review = Review.all.find_by(id: params[:id])

        if review
            review.destroy

            render json: {success: "Sucessfully deleted"}
        else 
            render json: {errors: 'Review not found and thus not deleted' }
        end 

    end 

    private
    
    def reivew_params
        params.permit(:user_id, :description, :challenge_id, :rating)
    end 

end

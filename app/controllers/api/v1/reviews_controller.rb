module Api::V1
    class ReviewsController < ApplicationController
        before_action :find_review, only: [:show]
        
        def index
            reviews = Review::all
            render json: { reviews: reviews }
        end
        
        def create
            review = Review.new(review_params)
            # raise review.inspect
            if review.save
               render json: { review: review }
            else
                render json: { review: review.errors.full_messages }
            end
        end
        
        def show
            render json: { review: @review }
        end
        private 
        def find_review
            @review = Review.find(params[:id])
            rescue ActiveRecord::RecordNotFound
            render json: { error: "Review does not exist" }, status: :not_found
        end
        def review_params
            params.permit(:comment, :rating, :doctor_id)
        end
            
    end
end

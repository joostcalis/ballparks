class ReviewsController < ApplicationController
  before_action :get_ballpark

  def create
    review = Review.new(review_params)
    review.ballpark = @ballpark

    if review.save
      render json: { review: review }
    else
      render json: {
        message: "Could not add Review",
        errors: review.errors,
      }, status: :unprocessible_entity
    end
  end

  private

  def get_ballpark
    @ballpark = Ballpark.find(params[:ballpark_id])
  end

  def review_params
      params.require(:review).permit(:concession, :extra_activity_rating, :general_experience, :description, :overall_rating)
  end
end

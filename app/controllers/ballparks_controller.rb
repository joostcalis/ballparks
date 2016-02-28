class BallparksController < ApplicationController
  def index
    render json: {
      meta: {
        count: Ballpark.count,
        page: 0
      },
      ballparks: Ballpark.order(:name)
    }
  end

  def show
      ballpark = Ballpark.find(params[:id])
      average_rating = get_average(ballpark)
      reviews = ballpark.reviews
      render json: {
        ballpark: ballpark,
        average_rating: average_rating,
        reviews: reviews
        }
  end

  private
  def get_average(ballpark)
    reviews = ballpark.reviews
    if reviews.empty?
      return 0
    else
      review_sum = reviews.inject(0) { |sum, review| sum += review.overall_rating }
      avg_rating = (review_sum.to_f / reviews.count).round
    end
  end
end

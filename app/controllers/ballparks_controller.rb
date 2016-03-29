class BallparksController < ApplicationController
  def index
    al_west = Ballpark.where("league = 'al_west'")
    al_central = Ballpark.where("league = 'al_central'")
    al_east = Ballpark.where("league = 'al_east'")
    nl_west = Ballpark.where("league = 'nl_west'")
    nl_central = Ballpark.where("league = 'nl_central'")
    nl_east = Ballpark.where("league = 'nl_east'")
    latest_10_reviews = Review.order(id: :desc).limit(10)

    render json: {
      meta: {
        count: Ballpark.count,
        page: 0
      },
      al_west: al_west.as_json({include: :reviews, methods: :average_rating}),
      al_central: al_central.as_json({include: :reviews, methods: :average_rating}),
      al_east: al_east.as_json({include: :reviews, methods: :average_rating}),
      nl_west: nl_west.as_json({include: :reviews, methods: :average_rating}),
      nl_central: nl_central.as_json({include: :reviews, methods: :average_rating}),
      nl_east: nl_east.as_json({include: :reviews, methods: :average_rating}),
      reviews: latest_10_reviews.as_json({include: :ballpark})
    }
  end

  def show
      ballpark = Ballpark.find(params[:id])
      average_rating = ballpark.average_rating
      reviews = ballpark.reviews
      render json: {
        ballpark: ballpark,
        average_rating: average_rating,
        reviews: reviews
        }
  end
end
